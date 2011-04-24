module Rich
  module Pluralization
    module Core
      module String
        module Inflections

          def pl(count = nil)
            Rich::Pluralization::Inflector.pluralize self, count
          end

          def pl!(count = nil)
            downcase == (result = pl(count)).downcase ? nil : replace(result)
          end

        end
      end
    end
  end
end