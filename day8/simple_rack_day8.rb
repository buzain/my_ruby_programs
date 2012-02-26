class SimpleRack
  def call(env)
    [200, {"Content-Type" => "text/plain"}, 
     ["Command line argument you typed was: #{ARGV.join(' ')} "]]
  end
end



