# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selly/version'

Gem::Specification.new do |spec|
  spec.name          = "selly"
  spec.version       = Selly::VERSION
  spec.authors       = ["Selly"]
  spec.email         = ["contact@selly.io"]

  spec.summary       = "Ruby library for Selly's API"
  spec.description   = "Ruby library for Selly's API"
  spec.homepage      = "https://selly.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.require_paths = ['lib', 'lib/selly']

  spec.add_dependency 'http'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
