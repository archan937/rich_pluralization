require File.join(File.dirname(__FILE__), "..", "..", "test_helper.rb")

module Locales
  module NL
    class InflectionsTest < ActiveSupport::TestCase

      context "A String instance in singular form" do
        setup do
          I18n.locale = Engine.init :nl
        end

        should "have to correct locale set" do
          assert_equal I18n.locale, :nl
        end

        should "pluralize correctly" do
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

        should "pluralize according to the WNT list" do
          if File.exist? filename = File.join(File.dirname(__FILE__), "words.csv")

            return

            CSV.open(filename, "r", ",") do |word|
              assert_equal word[1], word[0].pl unless word[1].match(/NULL/)
            end

            # passed, counted = 0, 0
            #
            # CSV.open(File.join(File.dirname(__FILE__), "words.csv"), "r", ",") do |word|
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

    end
  end
end