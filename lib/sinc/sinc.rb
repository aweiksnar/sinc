module Sinc
  require "ostruct"

  class << self
    attr_accessor :settings
  end

  module_function

  def test_gem
    "sinc"
  end

  def headers(headers)
    "Headers: #{headers}"
  end

  def params(params)
    "Params: #{params}"
  end

  def session?(session)
    "Session?: #{session.any?}"
  end

  def body(body)
    "Body: \n#{body}\n\n"
  end

  def configure(args)
    @settings = OpenStruct.new(args)
  end
end
