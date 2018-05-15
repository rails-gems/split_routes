module SplitRoutes
  class Railtie < Rails::Railtie
    initializer "split_routes.configure_rails_initialization" do |app|
      # some initialization behavior
      app.middleware.use SplitRoutes::Reloader if Rails.env.development?
      app.routes.prepend do
        draw_routes
      end
    end
  end
end