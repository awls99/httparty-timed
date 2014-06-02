# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'httparty/timmed/version'

Gem::Specification.new do |spec|
  spec.name          = "httparty-timmed"
  spec.version       = Httparty::Timmed::VERSION
  spec.authors       = ["Silva, Arthur"]
  spec.email         = ["arthur.silva@bskyb.com"]
  spec.description   = %q{HTTParty with Response#duration method}
  spec.summary       = %q{This gem consist mostly of monkey patching to get Net::HTTP to record the call's duration and
  pass it along HTTParty for easy usage}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_development_dependency "sinatra"
end
