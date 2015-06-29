require_relative 'source'
require_relative 'time'

module Geo
  module Discovery
    # Represents the fact, that a georeference was discovered in a certain
    # source, talking about a certain representation of time
    class Base
      attr_value_initialize :source, :time, :additional_fields

      def to_hash
        additionals = if @additional_fields then @additional_fields else {} end
        {
          source: source,
          time: time
        }.merge(additionals)
      end

      def to_json(state = nil)
        to_hash.to_json(state)
      end
    end
  end
end
