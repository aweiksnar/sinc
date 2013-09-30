require "sinatra"
require "rspec"
require "rack/test"
require "spec_helper"
require "lib/sinc.rb"

Rspec.configure do |config|
  config.color_enabled = true
end
