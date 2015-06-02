module Geo
  module Discovery
    # Represents a certain notion of time and an estimation how precise this
    # notion of time is
    class Time
      attr_value_initialize :representation, :estimated_precision
    end
  end
end
