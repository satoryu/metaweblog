lib = File.expand_path(File.join(__dir__, 'lib'))
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metaweblog/version'

Gem::Specification.new do |spec|
  spec.name          = 'metaweblog'
  spec.version       = MetaWeblog::VERSION
  spec.authors       = ['Tatsuya Sato']
  spec.email         = ['satoryu.1981@gmail.com']
  spec.description   = <<-DESC
    Ruby client for metaWeblog API.
    This gem makes it easier for developers to talk with your Blog supporting
    metaWeblog API.
    This gem only depends on REXML provided as one of Ruby's standard lib.
  DESC
  spec.summary       = 'Ruby client for metaWeblog API.'
  spec.homepage      = 'http://github.com/satoryu/metaweblog'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.3.0'
  spec.rdoc_options = %w[
    --main=README.md
    --exclude=Gemfile --exclude=Rakefile --exclude=*.gemspec
  ]
  spec.metadata = {
    "homepage_uri" => "https://github.com/satoryu/metaweblog",
    "changelog_uri" => "https://github.com/satoryu/metaweblog/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/satoryu/metaweblog",
    "bug_tracker_uri" => "https://github.com/satoryu/metaweblog/issues"
  }

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16.1'
  spec.add_development_dependency 'rake', '~> 12.3.0'
  spec.add_development_dependency 'rspec', '~> 3.7.0'
end
