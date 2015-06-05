module Geo
  module Discovery
    # Represents a certain notion of time and an estimation how precise this
    # notion of time is
    class Time
      attr_value_initialize :representation, :estimated_precision

      def to_hash
        {
          representation: representation,
          estimated_precision: estimated_precision
        }
      end

      def to_json(state = nil)
        to_hash.to_json(state)
      end
    end
  end
end
