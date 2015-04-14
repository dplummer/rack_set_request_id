# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rack/set_request_id/version"

Gem::Specification.new do |spec|
  spec.name          = "rack_set_request_id"
  spec.version       = Rack::SetRequestId::VERSION
  spec.authors       = ["Donald Plummer"]
  spec.email         = ["donald.plummer@gmail.com"]

  spec.summary       = %q{Rack middleware to set request_id for http requests}
  spec.description   = %q{For use with Rails and the RequestId gem, this sets the request id so it can be sent on to internal http services.}
  spec.homepage      = "https://github.com/dplummer/rack_set_request_id"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.add_dependency "rack"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
