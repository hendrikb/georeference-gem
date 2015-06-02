require_relative 'source'
require_relative 'time'

module Geo
  module Discovery
    # Represents the fact, that a georeference was discovered in a certain
    # source, talking about a certain representation of time
    class Base
      attr_value_initialize :source, :time
    end
  end
end
