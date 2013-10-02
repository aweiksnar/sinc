Gem::Specification.new do |s|
  s.name        = 'sinc'
  s.version     = '0.0.0'
  s.date        = '2013-09-30'
  s.summary     = "Sinatra Console"
  s.description = "gem under construction"
  s.authors     = ["Alex Weiksnar"]
  s.email       = 'aweiksnar@gmail.com'
  s.files       = Dir.glob("lib/*/*.rb")
  s.executables = ["sinc"]
  s.test_files  = ["spec/sinc_spec.rb", "spec/spec_helper.rb"]
  s.homepage    = "http://rubygems.org/gems/sinc"
  s.license     = 'MIT'
end
