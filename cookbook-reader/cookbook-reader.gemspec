Gem::Specification.new do |s|
  s.name        = 'cookbook-reader'
  s.version     = '0.1.1'
  s.date        = '2014-03-12'
  s.summary     = "cookbook version parser"
  s.description = "A gem that parses cookbook metadata"
  s.authors     = ["Kevin Young"]
  s.email       = 'kevin@young.net'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.homepage    = 'http://rubygems.org/gems/cookbook-reader'
  s.license       = 'MIT'

  s.add_development_dependency "fakefs", "~> 0.4.2"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 2.13.0"
  s.add_development_dependency "simplecov", "~> 0.7.1"
  s.add_development_dependency "timecop", "~> 0.6.1"
end
