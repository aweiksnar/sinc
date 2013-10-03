after do
  if Sinc.settings
    puts ""
    puts Sinc.print_headers(response.headers) if Sinc.settings.headers
    puts Sinc.print_params(params)            if Sinc.settings.params
    puts Sinc.session?(session)               if Sinc.settings.session
  else
    puts ""
    puts Sinc.print_headers(response.headers)
    puts Sinc.print_params(params)
    puts Sinc.session?(session)
    puts "Response:"
  end
end
