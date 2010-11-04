require File.join(File.dirname(__FILE__), "..", "..", "test_helper.rb")

module Core
  module String
    class InflectionsTest < ActiveSupport::TestCase

      setup do
        I18n.locale = Engine.init :nl
      end

      test "current locale" do
        assert_equal I18n.locale, :nl
      end

      test "upcasing the first character" do
        assert_equal ""         , ""         .upcase_first
        assert_equal "Test"     , "TEST"     .upcase_first
        assert_equal "Test"     , "test"     .upcase_first
        assert_equal "Test test", "test test".upcase_first
        assert_equal "Test test", "Test Test".upcase_first
      end

    end

  end
end