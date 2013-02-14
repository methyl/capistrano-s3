require 'bundler/setup'
Bundler.require

require "mocha/setup"

RSpec.configure do |config|
  config.mock_framework = :mocha
end