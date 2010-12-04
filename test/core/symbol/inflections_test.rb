require File.expand_path("../../../test_helper.rb", __FILE__)

module Core
  module Symbol
    class InflectionsTest < ActiveSupport::TestCase

      context "A Symbol within the Dutch locale" do
        setup do
          I18n.locale = Engine.init :nl
        end

        should "have the correct locale set" do
          assert_equal I18n.locale, :nl
        end

        should "be able to pluralize itself" do
          assert_equal "huizen", :huis.pl
          assert_equal "huizen", :huis.pl(0)
          assert_equal "huis"  , :huis.pl(1)
          assert_equal "huizen", :huis.pl(2)
        end
      end

    end
  end
end