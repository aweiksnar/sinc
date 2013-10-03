after do
  if Sinc.settings
    puts ""
    puts Sinc.headers(response.headers) if Sinc.settings.headers
    puts Sinc.params(params)            if Sinc.settings.params
    puts Sinc.session?(session)         if Sinc.settings.session
    puts Sinc.body(response.body)       if Sinc.settings.body
  else
    puts ""
    puts Sinc.headers(response.headers)
    puts Sinc.params(params)
    puts Sinc.session?(session)
    puts "Response:"
  end
end
