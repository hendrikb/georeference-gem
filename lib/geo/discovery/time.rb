module Geo
  module Discovery
    # Represents a certain notion of time and an estimation how precise this
    # notion of time is
    class Time
      PRECISION_EXACT       = 5
      PRECISION_PRECISE     = 4
      PRECISION_FAIR        = 3
      PRECISION_COARSE      = 2
      PRECISION_VERY_COARSE = 1

      attr_value_initialize :representation, :estimated_precision, 
        :additional_fields

      def to_hash
        additionals = if @additional_fields then @additional_fields else {} end
        {
          representation: representation,
          estimated_precision: estimated_precision
        }.merge(additionals)
      end

      def to_json(state = nil)
        to_hash.to_json(state)
      end
    end
  end
end
