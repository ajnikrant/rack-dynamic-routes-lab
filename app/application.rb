class Application

    attr_accessor :item

    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)
  
      if req.path=="/cart/"
        if @@item.includes? item
            resp.write "#{@@item.price}"    
        end
      else
        resp.write "#{@@item} not found"
        resp.write "Route not found"
        resp.status = 404
      end
  
      resp.finish
    end
  end 