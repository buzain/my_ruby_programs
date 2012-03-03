require './my_404_mw'

use MyMiddleware::Error404 # this comes in between
run Proc.new{|env|  [200, {"Content-Type" => "text/plain"}, ['Ok']] }
