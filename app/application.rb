class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    # @@items = [Item.new]
    # if req.path=="/items"
    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item.price}\n"
        end
      # elsif !@@items
    elsif resp.write "Route not found"
      resp.status = 404
    # elsif resp.write "Item not found"

  else !@@items.include?(item.price)
        resp.write "Item not found"
        resp.status = 400
      #   resp.write "Route not found"
      # resp.status = 404
    end

    resp.finish
  end
end
