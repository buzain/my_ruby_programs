require 'open-uri'

f = open('http://satishtalim.github.com/webruby/chapter3.html')

body = f.readlines.join
count = body.downcase.scan('the').size
puts ("the is mentioned #{count} time(s)")
