module Rich
  module Pluralization
    module Engine
      extend self

      def init(test_locale = nil)
        if test_locale
          I18n.load_path  =    [File.expand_path "../../../../locales/#{test_locale}.yml", __FILE__]
        else
          I18n.load_path += Dir[File.expand_path "../../../../locales/*.yml"             , __FILE__]
        end

        I18n.backend.reload!
        Rich::Pluralization::Inflector.inflections.reset_attrs if test_locale

        initial_locale = I18n.locale

        I18n.backend.available_locales.each do |locale|
          I18n.locale = locale

          Rich::Pluralization::Inflector.inflections locale do |inflections|
            (I18n.t! "e9s" rescue []).each do |type, entries|
              entries.each do |inflection|
                inflections.send *[type, inflection].flatten
              end
            end
          end
        end

        I18n.locale = initial_locale

        test_locale
      end

    end
  end
end

Rich::Pluralization::Engine.init