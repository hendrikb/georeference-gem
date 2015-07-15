module Geo
  module Discovery
    # Represents a source of a geo reference, giving information about the
    # source itself (predefined, like "dbpedia") and a likert scale like
    # estimation of the source's trustworthiness
    class Source
      attr_value_initialize :identifier, :trustworthiness, :additional_fields

      def to_hash
        additionals = if @additional_fields then @additional_fields else {} end
        {
          identifier: identifier,
          trustworthiness: trustworthiness
        }.merge(additionals)
      end

      def to_json(state = nil)
        to_hash.to_json(state)
      end
    end
  end
end
