module Geo
  module OSM
    # The higher the number, the more 'precise' is a geo reference
    # See http://wiki.openstreetmap.org/wiki/Tag%3aboundary=administrative
    module AdministrativeLevel
      # rarely used, may represent things like European Union
      SUPER_NATIONAL = 1
      # basically representing a federal nation or country
      NATION = 2
      # admin_level three is VERY indifferently handled from country to country
      INDIFFERENTLY = 3
      # representing states within a country, not countries
      STATE = 4
      REGION = 5
      COUNTY = 6
      TOWNSHIP = 7
      MUNICIPALITY = 8
      BOROUGH = 9
      QUARTER = 10
    end
  end
end
