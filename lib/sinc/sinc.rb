module Sinc
  require "ostruct"

  class << self
    attr_accessor :settings
  end

  def self.test_gem
    "sinc"
  end

  def self.headers(headers)
    "Headers: #{headers}"
  end

  def self.params(params)
    "Params: #{params}"
  end

  def self.session?(session)
    "Session?: #{session.any?}"
  end

  def self.body(body)
    "Body: \n#{body}\n\n"
  end

  def self.configure(args)
    @settings = OpenStruct.new(args)
  end
end
