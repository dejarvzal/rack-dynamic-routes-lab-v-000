class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items = [Item.new]
    if req.path=="/items"
      @@items.each do |item|
        resp.write "#{Item.price}\n"
        end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
