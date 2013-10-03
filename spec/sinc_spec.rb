ENV['RACK_ENV'] = 'test'

require "spec_helper"

describe "sinc gem" do
  include Rack::Test::Methods
  require 'rspec/mocks/standalone'

  def app
    Sinatra::Application
  end

  describe "#test_gem" do
    it "should be defined" do
      expect(Sinc).to respond_to(:test_gem)
    end

    it "should say hi" do
      expect(Sinc.test_gem).to eq("sinc")
    end
  end

  describe "#headers" do
    it "should be defined" do
      expect(Sinc).to respond_to(:headers)
    end

    it "should display headers" do
      expect(Sinc.headers({"Content-Type" => "text/plain"})).to eq("Headers: {\"Content-Type\"=>\"text/plain\"}")
    end
  end

  describe "#params" do
    it "should be defined" do
      expect(Sinc).to respond_to(:params)
    end

    it "should display params" do
      expect(Sinc.params({:fake_key => "fake value"})).to eq("Params: {:fake_key=>\"fake value\"}")
    end
  end

  describe "#session" do
    it "should be defined" do
      expect(Sinc).to respond_to(:session?)
    end

    it "should display session presence" do
      expect(Sinc.session?({:fake_user_id => 1})).to eq("Session?: true")
    end
  end

  describe "#body" do
    it "should be defined" do
      expect(Sinc).to respond_to(:body)
    end

    it "should display the body" do
      expect(Sinc.body(["body"])).to eq("Body: \n[\"body\"]\n\n")
    end
  end

  describe "#configure" do
    it "should be defined" do
      expect(Sinc).to respond_to(:configure)
    end

    it "should take arguments" do
      expect(Sinc.configure(:params => true)).not_to be_nil
    end

    it "should hold attributes" do
      config = Sinc.configure(:params => true, :session => true, :headers => false, :body => false)
      expect(config.params).to eq(true)
      expect(config.session).to eq(true)
      expect(config.headers).to eq(false)
      expect(config.body).to eq(false)
    end
  end

  describe "#settings" do
    it "should be defined" do
      expect(Sinc).to respond_to(:settings)
    end

    it "should hold settings" do
      Sinc.configure(:params => true, :session => true, :headers => false, :body => false)
      expect(Sinc.settings.params).to eq(true)
      expect(Sinc.settings.session).to eq(true)
      expect(Sinc.settings.headers).to eq(false)
      expect(Sinc.settings.body).to eq(false)
    end
  end
end

