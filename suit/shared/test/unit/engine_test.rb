require File.expand_path("../../test_helper.rb", __FILE__)

class EngineTest < ActiveSupport::TestCase

  context "Rich::Pluralization::Engine" do
    should "be defined" do
      assert defined?(Rich::Pluralization::Engine)
    end

    should "respond to :init" do
      assert Rich::Pluralization::Engine.respond_to?(:init)
    end

    context "on initialization" do
      should "append Rich-pluralization locale yml's to the I18n load path" do
        (locales_yml = Dir[File.expand_path "../../locales/*.yml", __FILE__]).each do |locale_yml|
          assert I18n.load_path.include?(locale_yml)
        end
        assert I18n.load_path.size > locales_yml.size
      end

      context "when having a test locale passed" do
        setup do
          I18n.locale = Rich::Pluralization::Engine.init :nl
        end

        should "have the test locale set" do
          assert_equal I18n.locale, :nl
        end

        should "set the I18n load path to only contain the Rich-pluralization locale yml" do
          # assert_equal [File.expand_path("../../locales/nl.yml", __FILE__)], I18n.load_path
        end
      end
    end
  end

end