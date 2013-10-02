require "sinatra"
require "rspec"
require "rack/test"
Dir["./lib/**/*.rb"].each {|file| require file }

RSpec.configure do |config|
  config.color_enabled = true
end

get "/" do
  "Hello world"
end

get "/params" do
  params[:hello] = "hi"
end
