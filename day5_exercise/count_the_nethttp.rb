require 'net/http'

uri = URI('http://satishtalim.github.com/webruby/chapter3.html')

body = Net::HTTP.get(uri)
count = body.downcase.scan('the').size
puts ("the is mentioned #{count} time(s)")
