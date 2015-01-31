# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ukrlatinka/version'

Gem::Specification.new do |spec|
  spec.name          = "ukrlatinka"
  spec.version       = Ukrlatinka::VERSION
  spec.authors       = ["Mikhail Krainik"]
  spec.email         = ["avastor.developer@gmail.com"]
  spec.description   = %q{Convert ukrainian word to latin chars}
  spec.summary       = %q{Convert ukrainian word to latin chars}
  spec.homepage      = "https://github.com/avastor/ukrlatinka"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end