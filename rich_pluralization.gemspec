# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rich_pluralization}
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Engel"]
  s.date = %q{2010-10-04}
  s.description = %q{Rich-pluralization is a module of E9s (http://github.com/archan937/e9s) which provides localized pluralization in combination with i18n. Doing this enables you to only translate words in singular form as the module pluralizes the translation for you.}
  s.email = %q{paul.engel@holder.nl}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    ".gitignore",
     "CHANGELOG",
     "MIT-LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "init.rb",
     "install.rb",
     "lib/rich/pluralization/core.rb",
     "lib/rich/pluralization/core/string.rb",
     "lib/rich/pluralization/core/string/inflections.rb",
     "lib/rich/pluralization/core/symbol.rb",
     "lib/rich/pluralization/core/symbol/inflections.rb",
     "lib/rich/pluralization/engine.rb",
     "lib/rich/pluralization/inflector.rb",
     "lib/rich/pluralization/inflector/inflections.rb",
     "lib/rich_pluralization.rb",
     "locales/es.yml",
     "locales/nl.yml",
     "rails/init.rb",
     "rich_pluralization.gemspec",
     "tasks/rich_pluralization_tasks.rake",
     "test/core/string/inflections_test.rb",
     "test/engine_test.rb",
     "test/locales/nl/inflections_test.rb",
     "test/setup.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/archan937/rich_pluralization}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Enrichments (e9s) module for localized pluralization}
  s.test_files = [
    "test/core/string/inflections_test.rb",
     "test/engine_test.rb",
     "test/locales/nl/inflections_test.rb",
     "test/setup.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n>, ["= 0.3.7"])
    else
      s.add_dependency(%q<i18n>, ["= 0.3.7"])
    end
  else
    s.add_dependency(%q<i18n>, ["= 0.3.7"])
  end
end

