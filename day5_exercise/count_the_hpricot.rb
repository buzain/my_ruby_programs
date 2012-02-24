require 'open-uri'
require 'hpricot'

page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
body = page.inner_html
count = body.downcase.scan('the').size
puts ("the is mentioned #{count} time(s)")
