require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://satishtalim.github.com/webruby/chapter3.html"))

body = doc.text
count = body.downcase.scan('the').size
puts ("the is mentioned #{count} time(s)")


