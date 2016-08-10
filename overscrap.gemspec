# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'overscrap/version'

Gem::Specification.new do |spec|
  spec.name          = "overscrap"
  spec.version       = Overscrap::VERSION
  spec.authors       = ["aurelman"]
  spec.email         = ["me@myself.org"]

  spec.summary       = %q{Overscrap is a library that allows to retrieve informations from official Overwathc/Blizzard websites}
#  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/aurelman/overscrap"
  spec.license       = "LGPL-3.0"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "simplecov"
#  spec.add_development_dependency "pry"

  spec.add_runtime_dependency "httparty", "~> 0.14"
  spec.add_runtime_dependency "nokogiri", "~> 1.6"
end
