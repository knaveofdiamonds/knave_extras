# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{knave_extras}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roland Swingler"]
  s.date = %q{2009-08-22}
  s.email = %q{roland.swingler@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "knave_extras.gemspec",
     "lib/knave_extras.rb",
     "lib/knave_extras/tasks/vlad.rb",
     "rails_generators/model/USAGE",
     "rails_generators/model/model_generator.rb",
     "rails_generators/model/templates/migration.rb",
     "rails_generators/model/templates/model.rb",
     "rails_generators/model/templates/unit_test.rb",
     "rails_generators/openid_scaffold/openid_scaffold_generator.rb",
     "rails_generators/openid_scaffold/templates/application_controller.rb",
     "rails_generators/openid_scaffold/templates/functional_test.rb",
     "rails_generators/openid_scaffold/templates/helper.rb",
     "rails_generators/openid_scaffold/templates/helper_test.rb",
     "rails_generators/openid_scaffold/templates/migration.rb",
     "rails_generators/openid_scaffold/templates/sessions_controller.rb",
     "rails_generators/openid_scaffold/templates/sessions_new.erb",
     "rails_generators/openid_scaffold/templates/user.rb",
     "rails_generators/openid_scaffold/templates/user_edit.erb",
     "rails_generators/openid_scaffold/templates/user_show.erb",
     "rails_generators/openid_scaffold/templates/user_test.rb",
     "rails_generators/openid_scaffold/templates/users_controller.rb",
     "rails_generators/scaffold/USAGE",
     "rails_generators/scaffold/scaffold_generator.rb",
     "rails_generators/scaffold/templates/controller.rb",
     "rails_generators/scaffold/templates/functional_test.rb",
     "rails_generators/scaffold/templates/helper.rb",
     "rails_generators/scaffold/templates/helper_test.rb",
     "rails_generators/scaffold/templates/layout.html.erb",
     "rails_generators/scaffold/templates/style.css",
     "rails_generators/scaffold/templates/view_edit.html.erb",
     "rails_generators/scaffold/templates/view_form.html.erb",
     "rails_generators/scaffold/templates/view_index.html.erb",
     "rails_generators/scaffold/templates/view_new.html.erb",
     "rails_generators/scaffold/templates/view_show.html.erb",
     "rails_generators/styles/USAGE",
     "rails_generators/styles/styles_generator.rb",
     "rails_generators/styles/templates/resets.css",
     "rails_generators/styles/templates/typography.less",
     "test/knave-extras_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/knaveofdiamonds/knave-extras}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Various bits and pieces for a rails project}
  s.test_files = [
    "test/test_helper.rb",
     "test/knave-extras_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
