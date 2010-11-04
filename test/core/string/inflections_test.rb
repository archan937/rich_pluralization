require File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "test_helper.rb"))

class InflectionsTest < ActiveSupport::TestCase

  setup do
    I18n.locale = Engine.init("nl")
  end
  
  test "set nl locale" do
    assert_equal I18n.locale, :nl
  end
  
  test "upcasing first character" do
    assert_equal "Test", "TEST".upcase_first
    assert_equal "", "".upcase_first
    assert_equal "Test", "test".upcase_first
    assert_equal "Test test", "test test".upcase_first
  end
  
end
