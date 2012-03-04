require 'sinatra'
require '../day11/my_middleware'
use MyMiddleware::Hello
get '/' do
  "Hello Ruby participants from across the globe!"
end
