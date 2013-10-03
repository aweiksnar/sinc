class Sinc
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

  def self.print_data(*args)
    args.each {|arg| puts arg}
  end

  def self.configure(args)
    settings = OpenStruct.new
    settings.params  = args[:params]
    settings.session = args[:session]
    settings.headers = args[:headers]
    @settings = settings
  end
end
