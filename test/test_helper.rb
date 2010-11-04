require "rubygems"
require "active_support"
# require "active_support/test_case"
require "test/unit"
require "rich_pluralization"
require File.join(File.dirname(__FILE__), "..", "lib", "rich_pluralization")
require "locales/nl/inflections_test"

# 
# class ActiveSupport::TestCase
#   # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
#   #
#   # Note: You'll currently still have to declare fixtures explicitly in integration tests
#   # -- they do not yet inherit this setting
#   # fixtures :all
# 
#   # Add more helper methods to be used by all tests here...
# end

include Rich::Pluralization