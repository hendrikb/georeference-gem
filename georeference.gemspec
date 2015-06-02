require File.expand_path('../lib/geo', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Hendrik Bergunde']
  gem.email         = ['hbergunde@gmx.de']
  gem.description   = 'Gem providing an object representation for geo ' \
                      'references scraped from semantic sources'
  gem.summary       = 'Wrap up for semantically scraped geo references'
  gem.homepage      = 'https://github.com/hendrikb/georeference'
  gem.files         = `git ls-files`.split("\n")
  gem.name          = 'georeference'
  gem.require_paths = ['lib']
  gem.version       = GeoReference::VERSION
end
