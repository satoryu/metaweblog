# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

require 'metaweblog'

RSpec.configure do |c|
  c.mock_with :rspec
end
