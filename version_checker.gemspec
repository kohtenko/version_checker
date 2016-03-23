# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "version_checker"
  spec.version       = VersionChecker::VERSION
  spec.authors       = ["Oleg Kokhtenko"]
  spec.email         = ["kohtenko@gmail.com"]

  spec.summary       = "Version checker to integrate with your gem"
  spec.description   = ""
  spec.homepage      = "https://github.com/kohtenko/version_checker"
  spec.license       = "MIT"
  spec.executables   = ["version_checker"]

  spec.files         = Dir["lib/**/*"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
