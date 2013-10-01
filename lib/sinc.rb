class Sinc
  def self.test_gem
    "sinc"
  end

  def self.print_headers(headers)
    "Headers: #{headers}"
  end

  def self.print_params(params)
    "Params: #{params}"
  end

  def self.session?(session)
    "Session?: #{session.any?}"
  end

  def self.print_data(*args)
    args.each {|arg| puts arg}
  end
end

after do
  Sinc.print_data("", Sinc.print_headers(response.headers), Sinc.print_params(params), Sinc.session?(session), "Response:")
end


