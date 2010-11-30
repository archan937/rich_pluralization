require File.join(File.dirname(__FILE__), "..", "..", "test_helper.rb")

module Core
  module String
    class InflectionsTest < ActiveSupport::TestCase

      context "A String instance" do
        setup do
          I18n.locale = Engine.init :nl
        end

        should "have to correct locale set" do
          assert_equal I18n.locale, :nl
        end

        should "upcase the first character" do
          assert_equal ""         , ""         .upcase_first
          assert_equal "TeST"     , "teST"     .upcase_first
          assert_equal "Test"     , "test"     .upcase_first
          assert_equal "Test test", "test test".upcase_first
          assert_equal "Test Test", "Test Test".upcase_first
        end
      end

    end
  end
end