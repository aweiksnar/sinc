Gem::Specification.new do |s|
  s.name        = 'sinc'
  s.version     = '0.0.1'
  s.date        = '2013-10-05'
  s.summary     = "sinc = sinatra in console"
  s.description = "Sinatra server log for classic apps"
  s.authors     = ["Alex Weiksnar"]
  s.email       = 'aweiksnar@gmail.com'
  s.files       = Dir.glob("lib/**/*.rb")
  s.executables = ["sinc"]
  s.test_files  = ["spec/sinc_spec.rb", "spec/spec_helper.rb"]
  s.homepage    = "http://rubygems.org/gems/sinc"
  s.license     = 'MIT'
end
