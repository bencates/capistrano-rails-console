# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-rails-console"
  spec.version       = "0.0.1"
  spec.authors       = ["Ben Cates"]
  spec.email         = ["ben.cates@gmail.com"]
  spec.description   = %q{Remote rails console}
  spec.summary       = %q{Enables rails console and related commands to be run on capistrano-managed servers}
  spec.homepage      = "https://github.com/bencates/capistrano-rails-console"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "capistrano", "~> 3.0"
end
