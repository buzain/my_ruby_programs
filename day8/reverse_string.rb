class ReverseString
  def call(env)
    req = Rack::Request.new(env)
    string = req.params['string']

    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      str = "String sent is #{string} and its reverse is #{string.reverse}"
      res.write str
    end

  end
end
