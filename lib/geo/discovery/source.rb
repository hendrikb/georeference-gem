module Geo
  module Discovery
    # Represents a source of a geo reference, giving information about the
    # source itself (predefined, like "dbpedia") and a likert scale like
    # estimation of the source's trustworthiness
    class Source
      attr_value_initialize :source_id, :trustworthiness
    end
  end
end
