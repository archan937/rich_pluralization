require File.expand_path("../test_helper.rb", __FILE__)

class ReadmeTest < ActiveSupport::TestCase

  context "The Dutch README examples" do
    setup do
      I18n.locale = Engine.init :nl
    end

    should "have the correct locale set" do
      assert_equal I18n.locale, :nl
    end

    should "return the expected values" do
      [
        ["Appendices", "Appendix"  ],
        ["huizen"    , "huis"      ],
        ["Huizen"    , "Huis"      ],
        ["HUIZEN"    , "HUIS"      ],
        ["Academici" , "Academicus"],
        ["brieven"   , "brief"     ],
        ["gebruikers", "gebruiker" ],
        ["musea"     , :museum     ],
        ["afspraken" , "afspraak"  ]
      ].
      each do |(expectation, argument)|
        assert_equal expectation, argument.pl
      end
    end
  end

end