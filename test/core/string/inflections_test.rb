require File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "test_helper.rb"))

class InflectionsTest < ActiveSupport::TestCase

  setup do
    I18n.locale = Engine.init("nl")
  end
  
  test "the truth" do
    assert true
  end
  
  test "set nl locale" do
    assert_equal I18n.locale, :nl
  end
  

end
