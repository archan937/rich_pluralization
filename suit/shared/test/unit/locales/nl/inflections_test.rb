require File.expand_path("../../../../test_helper.rb", __FILE__)
require "csv"

module Locales
  module NL
    class InflectionsTest < ActiveSupport::TestCase

      test "wnt_list" do
        pending do
          assert false

          if File.exist?(filename = File.expand_path("../words.csv", __FILE__))
            CSV.open(filename, "r", ",") do |word|
              assert_equal word[1], word[0].pl unless word[1].match(/NULL/)
            end

            # passed, counted = 0, 0
            #
            # CSV.open(filename, "r", ",") do |word|
            #   unless word[1].match(/NULL/)
            #     counted = counted + 1
            #     passed  = passed + 1 if word[1] == word[0].pl
            #   end
            # end
            #
            # puts "Dutch word pluralization test results:"
            # puts "Passed #{passed} of #{counted}"
          end

        end
      end

      context "A String within the Dutch locale" do
        setup do
          I18n.locale = Rich::Pluralization::Engine.init :nl
        end

        should "have the correct locale set" do
          assert_equal I18n.locale, :nl
        end

        should "not pluralize with a passed count that restricts that" do
          assert_equal "vragen", "vraag".pl(0)
          assert_equal "vraag" , "vraag".pl(1)
          assert_equal "vragen", "vraag".pl(2)
        end

        should "pluralize with Dutch inflections" do
          assert_equal "vinnen"             , "vin".pl
          assert_equal "tassen"             , "tas".pl
          assert_equal "telefoons"          , "telefoon".pl
          assert_equal "vragen"             , "vraag".pl
          assert_equal "huizen"             , "huis".pl
          assert_equal "brieven"            , "brief".pl
          assert_equal "broeken"            , "broek".pl
          assert_equal "tekens"             , "teken".pl
          assert_equal "begrafenissen"      , "begrafenis".pl
          assert_equal "diners"             , "diner".pl
          assert_equal "jubilea"            , "jubileum".pl
          assert_equal "festivals"          , "festival".pl
          assert_equal "vazen"              , "vaas".pl
          # assert_equal "vragen & antwoorden", "vraag & antwoord".pl
        end
      end

    end
  end
end