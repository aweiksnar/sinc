![sinc](http://i.imgur.com/BU5gy6R.jpg)

# sinc ~> 0.0.1

Sinc is a tiny gem that provides a Sinatra server log for classic-style apps.

## Install
    $ gem install sinc

## Usage

Add sinc to your classic-style sinatra app and it will display a server log with headers, params, session(boolean), and response data.

app.rb
```ruby
require "sinatra"
require "sinc" if development?

get '/' do
  params[:hello] = "world"
  "Hello sinc!"
end
```
output
```
Headers: {"Content-Type"=>nil}
Params: {:hello=>"world"}
Session?: false
Response:
127.0.0.1 - - [05/Oct/2013 08:23:04] "GET / HTTP/1.1" 200 11 0.0039
```

## Optional Configuration

Add a Sinc.configure line after your require tree and set the data you want to output to true. Options currently supported are :headers, :params, :session, and :body.
```ruby
require "sinatra"
require "sinc" if development?

Sinc.configure(:params => true, :body => true)

get '/' do
  params[:hello] = "world"
  "Hello sinc!"
end
```
output
```
Params: {:hello=>"world"}
Body:
["Hello sinc!"]

127.0.0.1 - - [05/Oct/2013 08:30:03] "GET / HTTP/1.1" 200 11 0.0041
```

## Set up locally

Make sure that you have Sinatra, Rack, and RSpec(>= 2.0) installed and run tests with the $ rspec command after cloning the repo.

## Heads-up

+ Sinc does not support modular applications yet
+ Only use sinc in development and test modes

## Future Versions

+ Add support for modular applications
+ Add more rack request/response data to configuration options
