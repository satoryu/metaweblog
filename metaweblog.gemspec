# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metaweblog/version'

Gem::Specification.new do |spec|
  spec.name          = "metaweblog"
  spec.version       = MetaWeblog::VERSION
  spec.authors       = ["Tatsuya Sato"]
  spec.email         = ["satoryu.1981@gmail.com"]
  spec.description   = <<-DESC
    Ruby client for metaWeblog API.
    This gem makes it easier for developers to talk with your Blog supporting
    metaWeblog API. 
    This gem only depends on REXML provided as one of Ruby's standard lib. 
  DESC
  spec.summary       = %q{Ruby client for metaWeblog API.}
  spec.homepage      = "http://github.com/satoryu/metaweblog"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 2.0"
  spec.add_development_dependency "rake"
end
