# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selly/version'

Gem::Specification.new do |spec|
  spec.name          = "selly"
  spec.version       = Selly::VERSION
  spec.authors       = ["Selly"]
  spec.email         = ["contact@selly.gg"]

  spec.summary       = "Yes"
  spec.description   = "Test"
  spec.homepage      = "https://selly.gg"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.require_paths = ['lib', 'lib/selly']

  spec.add_dependency 'http'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
