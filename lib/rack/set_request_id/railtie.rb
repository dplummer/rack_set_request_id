module Rack
  module SetRequestId
    class Railtie < Rails::Railtie
      initializer "rack_set_request_id.configure_rails_initialization" do |app|
        app.middleware.use Rack::SetRequestId::Middleware
      end
    end
  end
end
