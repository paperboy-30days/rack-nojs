# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/nojs/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-nojs"
  spec.version       = Rack::Nojs::VERSION
  spec.authors       = ["SHIBATA Hiroshi"]
  spec.email         = ["shibata.hiroshi@gmail.com"]
  spec.description   = %q{treat script tag in response.body when access with old mobile phone.}
  spec.summary       = %q{treat script tag in response.body when access with old mobile phone.}
  spec.homepage      = "https://github.com/paperboy-30days/rack-nojs"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "jpmobile", "0.0.8"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rack-test'
end
