require 'rack'
def my_method env
  [200, {}, ["method called"]]
end

Rack::Server.new( { :app => method(:my_method), :server => 'webrick', :Port => 9876} ).start
