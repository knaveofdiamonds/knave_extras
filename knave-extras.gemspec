# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{knave-extras}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roland Swingler"]
  s.date = %q{2009-07-26}
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
     "lib/knave_extras.rb",
     "rails_generators/model/USAGE",
     "rails_generators/model/model_generator.rb",
     "rails_generators/model/templates/migration.rb",
     "rails_generators/model/templates/model.rb",
     "rails_generators/model/templates/unit_test.rb",
     "rails_generators/scaffold/USAGE",
     "rails_generators/scaffold/scaffold_generator.rb",
     "rails_generators/scaffold/templates/controller.rb",
     "rails_generators/scaffold/templates/functional_test.rb",
     "rails_generators/scaffold/templates/helper.rb",
     "rails_generators/scaffold/templates/helper_test.rb",
     "rails_generators/scaffold/templates/layout.html.erb",
     "rails_generators/scaffold/templates/style.css",
     "rails_generators/scaffold/templates/view_edit.html.erb",
     "rails_generators/scaffold/templates/view_index.html.erb",
     "rails_generators/scaffold/templates/view_new.html.erb",
     "rails_generators/scaffold/templates/view_show.html.erb",
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
