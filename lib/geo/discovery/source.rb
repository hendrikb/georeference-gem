module Geo
  module Discovery
    # Represents a source of a geo reference, giving information about the
    # source itself (predefined, like "dbpedia") and a likert scale like
    # estimation of the source's trustworthiness
    class Source
      attr_value_initialize :source_id, :trustworthiness

      def to_hash
        {
          source_id: source_id,
          trustworthiness: trustworthiness
        }
      end

      def to_json(state = nil)
        to_hash.to_json(state)
      end
    end
  end
end
