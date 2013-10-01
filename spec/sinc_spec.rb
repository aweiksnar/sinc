ENV['RACK_ENV'] = 'test'

require "spec_helper"

describe "sinc gem" do
  include Rack::Test::Methods
  require 'rspec/mocks/standalone'
  require "sinc"

  def app
    Sinatra::Application
  end

  it "should say hi" do
    expect(Sinc.test_gem).to eq("sinc")
  end

  it "should display the headers" do
    expect(Sinc.print_headers({"Content-Type" => "text/plain"})).to eq("Headers: {\"Content-Type\"=>\"text/plain\"}")
  end

  it "should display the params" do
    expect(Sinc.print_params({:fake_key => "fake value"})).to eq("Params: {:fake_key=>\"fake value\"}")
  end

  it "should let the user know if there is a session present" do
    expect(Sinc.session?({:fake_user_id => 1})).to eq("Session?: true")
  end

  describe "printing to the console" do
    before do
      Sinc.stub(:print)
      Sinc.stub(:puts)
    end

    it "should have a method that displays a list of items" do
      expect(Sinc.print_data("Hello", "World")).to eq(["Hello", "World"])
    end
  end
end
