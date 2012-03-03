module MyMiddleware
  class Error404
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] != '/'
        [404,  {"Content-Type" => "text/plain"}, ["Not OK!"]]
      else
        # forward the request
        @app.call(env)
      end
    end
  end
end
