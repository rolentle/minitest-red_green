# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/red_green/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-red_green"
  spec.version       = Minitest::RedGreen::VERSION
  spec.authors       = ["ntl"]
  spec.email         = ["nathanladd+github@gmail.com"]
  spec.summary       = %q{Adds red/green colors to standard minitest output}
  spec.description   = %q{Adds red/green colors to standard minitest output}
  spec.homepage      = "https://github.com/ntl/minitest-red_green"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = []
  spec.test_files    = spec.files.grep %r{test}
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
