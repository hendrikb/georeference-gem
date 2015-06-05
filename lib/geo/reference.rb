require 'json'

require_relative 'OSM/administrative_level'
require_relative 'OSM/location'
require_relative 'discovery'

module Geo
  # Represents a certain geo reference with a unique id and some hints about
  # its geo identity and where this refence was discovered
  class Reference
    attr_value_initialize :location, :discoveries

    def to_hash
      {
        location.id => {
          human_readable_name: location.human_readable_name,
          administrative_level: location.administrative_level,
          discoveries: discoveries
        }
      }
    end

    def to_json(state = nil)
      to_hash.to_json(state)
    end
  end
end
