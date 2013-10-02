after do
  Sinc.print_data(
    "",
    Sinc.print_headers(response.headers),
    Sinc.print_params(params),
    Sinc.session?(session),
    "Response:")
end
