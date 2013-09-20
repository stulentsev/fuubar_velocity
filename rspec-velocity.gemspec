# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fuubar_velocity"
  spec.version       = '0.0.2'
  spec.authors       = ["Sergio Tulentsev"]
  spec.email         = ["sergei.tulentsev@gmail.com"]
  spec.description   = %q{After test run, prints velocity (how many specs/sec)}
  spec.summary       = %q{After test run, prints velocity (how many specs/sec)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('rspec', ["~> 2.0"])
  spec.add_dependency('fuubar', ["~> 1.1"])
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
