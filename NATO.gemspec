# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'NATO/version'

Gem::Specification.new do |spec|
  spec.name          = "NATO"
  spec.version       = NATO::VERSION
  spec.authors       = ["Lukas Alexandre"]
  spec.email         = ["lukas@codelogic.me"]
  spec.description   = %q{NATO Phonetic Alphabet conversion tool}
  spec.summary       = %q{NATO Phonetic Alphabet conversion tool}
  spec.homepage      = "https://github.com/lukelex/NATO"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ["nato"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "os", "~> 0.9"
  spec.add_dependency "slop"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.4"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "rspec-given", "~> 3.7"
end
