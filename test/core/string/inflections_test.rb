require File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "test_helper.rb"))

module Rich
  module Pluralization
    module Test
      module Core
        module String

          class InflectionsTest < ActiveSupport::TestCase
            setup do
              include Setup
              I18n.locale = ::Rich::Pluralization::Engine.init(Locales::NL)
            end
          
            # test "pl" do
            #   assert true
            # end
          end
        end
   
      end 
    end
  end
end