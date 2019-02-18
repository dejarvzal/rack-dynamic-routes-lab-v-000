class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
    
         item_price = req.path.split("/items/").last #turn /songs/Sorry into Sorry
         item = @@items.find{|s| s.price == item_price}
    
         resp.write item.price
       end

    # @@items = [Item.new]
    # if req.path=="/items"
    #   @@items.each do |item|
    #     resp.write "#{Item.price}\n"
    #     end
    # else
    #   resp.write "Route not found"
    #   resp.status = 404
    # end

    resp.finish
  end
end
