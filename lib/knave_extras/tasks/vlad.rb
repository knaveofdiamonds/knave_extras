require 'vlad'

Rake::TaskManager.class_eval do
  def remove_tasks(*names)
    names.each {|name| @tasks.delete(name.to_s) }
  end
end
Rake.application.remove_tasks("vlad:update", "vlad:setup", "vlad:setup_app")

namespace :vlad do
  desc "Update code, run migrations and restart server"
  task :deploy => [:update, :migrate, :start_app]

  desc "Update code on the remote machine"
  task :update => [:push_code, :clone_code, :update_symlinks, :install_gems, :make_current]

  task :push_code do
    `git push #{remote_name} HEAD`
  end

  remote_task :clone_code do
    run ["git clone -s #{scm_path} #{latest_release}",
         "cd #{latest_release}",
         "git submodule init",
         "git submodule update",
         "chmod -R g+w .",
         "mkdir -p #{latest_release}/db #{latest_release}/tmp" ].join(" && ")
  end

  remote_task :make_current do
    run "rm -f #{current_path} && ln -s #{latest_release} #{current_path}"
    run "echo #{now} $USER #{revision} #{File.basename release_path} >> #{deploy_to}/revisions.log"
  end

  remote_task :install_gems do
    run "cd #{latest_release} && sudo rake gems:install RAILS_ENV=production"
  end
  
  desc "Setup servers"
  task :setup => [:setup_app, :push_code]
    
  task :setup_app => :remote_setup_app do
    `git remote add #{remote_name} ssh://#{domain}#{scm_path}`
  end

  remote_task :remote_setup_app, :roles => :app do
    dirs = [deploy_to, releases_path, scm_path, shared_path]
    dirs += %w(system log pids).map { |d| File.join(shared_path, d) }
    run "umask #{umask} && mkdir -p #{dirs.join(' ')}"
    run "cd #{scm_path} && git --bare init"
  end
end
