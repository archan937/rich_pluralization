require File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "test_helper.rb"))

class InflectionsTest < Test::Unit::TestCase

  def setup
    I18n.locale = Engine.init(Locales::NL)
  end
  
  def test_the_truth
    assert true
  end
  
  def test_if_setup_works
    assert_equal I18n.locale, :nl
  end
end
