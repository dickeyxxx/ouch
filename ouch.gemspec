# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ouch/version'

Gem::Specification.new do |spec|
  spec.name          = "ouch"
  spec.version       = Ouch::VERSION
  spec.authors       = ["dickeyxxx"]
  spec.email         = ["jeff@dickey.xxx"]
  spec.description   = %q{Finds a hospital based on lat/lon}
  spec.summary       = %q{Uses ushospitalfinder.com}
  spec.homepage      = "https://github.com/dickeyxxx/ouch"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "vcr"

  spec.add_dependency "faraday"
  spec.add_dependency "nokogiri"
end
