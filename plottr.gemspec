# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plottr/version'

Gem::Specification.new do |spec|
  spec.name          = "plottr"
  spec.version       = Plottr::VERSION
  spec.authors       = ["Sid Tantia"]
  spec.email         = ["sstantia@gmail.com"]

  spec.summary       = "A simple graph drawing tool"
  spec.description   = "Generates arrays of strings with graph based on data input of arrays of x,y inputs"
  spec.homepage      = "https://github.com/sstgithub/plottr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry"
end
