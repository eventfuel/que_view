# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "que_view/version"

Gem::Specification.new do |spec|
  spec.name          = "que_view"
  spec.version       = QueView::VERSION
  spec.authors       = ["Niko Roberts", "Bruno Coelho", "Guy Silva"]
  spec.email         = ["niko@tasboa.com", "bruno@tasboa.com", "guy@tasboa.com"]
  spec.summary       = %q{Visibility into scheduled Que tasks}
  spec.description   = %q{Visibility into scheduled Que tasks}
  spec.homepage      = "https://github.com/tasboa/que_view"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "que"
  spec.add_dependency "activerecord"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
