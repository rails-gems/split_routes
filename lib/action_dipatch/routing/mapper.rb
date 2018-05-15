class ActionDispatch::Routing::Mapper
  # def draw(routes_name)
  #   instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  # end

  def draw_routes
    Dir.glob("#{Rails.root}/config/routes/**/*.rb").each do |route|
      instance_eval(File.read(route))
    end
  end
end