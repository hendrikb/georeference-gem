Gem::Specification.new do |gem|
  gem.authors       = ['Hendrik Bergunde']
  gem.email         = ['hbergunde@gmx.de']
  gem.description   = 'Gem providing an object representation for geo ' \
                      'references scraped from semantic sources'
  gem.summary       = 'Wrap up for semantically scraped geo references'
  gem.homepage      = 'https://github.com/hendrikb/georeference-gem'
  gem.files         = `git ls-files`.split("\n")
  gem.name          = 'georeference'
  gem.require_paths = ['lib']
  gem.version       = '0.1.1'

  gem.add_development_dependency 'rubocop', '~> 0.31.0'
  gem.add_development_dependency 'pry', '~> 0.10.1'
  gem.add_development_dependency 'rspec', '~> 3.2.0'

  gem.add_runtime_dependency 'attr_extras', '~> 4.4.0'
end
