require_relative 'source'
require_relative 'time'

module Geo
  module Discovery
    # Represents the fact, that a georeference was discovered in a certain
    # source, talking about a certain representation of time
    class Base
      attr_value_initialize :source, :time, [ :additional_fields ]

      def to_hash
        {
          source: source,
          time: time
        } # TODO Merge options here
      end

      def to_json(state = nil)
        to_hash.to_json(state)
      end
    end
  end
end
