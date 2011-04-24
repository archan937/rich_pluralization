# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rich/pluralization/version"

Gem::Specification.new do |s|
  s.name        = "rich_pluralization"
  s.version     = Rich::Pluralization::VERSION::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Paul Engel"]
  s.email       = ["paul.engel@holder.nl"]
  s.homepage    = "http://codehero.es/rails_gems_plugins/rich_pluralization"
  s.summary     = %q{Enrichments (e9s) module for localized pluralization}
  s.description = %q{Rich-pluralization is a module of E9s (http://github.com/archan937/e9s) which provides localized pluralization in combination with i18n. Doing this enables you to only translate words in singular form as the module pluralizes the translation for you.}

  s.rubyforge_project = "rich_pluralization"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rich_support"
  s.add_dependency "gem_suit"
  s.add_dependency "i18n"
end