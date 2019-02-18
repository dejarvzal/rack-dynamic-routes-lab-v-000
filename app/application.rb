class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    # @@items = [Item.new]
    if req.path=="/items"
      @@items.collect do |item|
        resp.write "#{item.price}\n"
        end
    elsif resp.write "Route not found"
      resp.status = 404
    # elsif resp.write "Item not found"

    else
        resp.write "Item not found"
      # resp.status = 404
    end

    resp.finish
  end
end
