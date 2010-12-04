module Rich
  module Pluralization
    module Core
      module Symbol
        module Inflections

          def pl(count = nil)
            to_s.pl count
          end

        end
      end
    end
  end
end