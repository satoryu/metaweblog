
if ENV['CI']
  require 'coveralls'

  Coveralls.wear!
  SimpleCov.start do
    add_filter '/spec/'
  end
end

$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

require 'metaweblog'

RSpec.configure do |c|
  c.mock_with :rspec
end
