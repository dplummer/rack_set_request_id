module Rack
  module SetRequestId
    class Middleware
      def initialize(app)
        @app = app
      end

      def call(env)
        if defined?(::RequestId)
          ::RequestId.set(:request_id, env['action_dispatch.request_id'])
        end

        if defined?(Honeybadger)
          Honeybadger.context(request_id: env['action_dispatch.request_id'])
        end

        @app.call(env)
      end
    end
  end
end
