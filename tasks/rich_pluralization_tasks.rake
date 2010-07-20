
namespace :rich_pluralization do
  Rake::TestTask.new do |t|
    t.libs << "test"
    t.verbose    = false
    t.test_files = FileList.new("vendor/plugins/rich_pluralization/test/**/*.rb") do |list|
                     # list.exclude "foo.rb"
                   end
  end
  Rake::Task["rich_pluralization:test"].comment = "Run the rich_pluralization plugin tests"
end
