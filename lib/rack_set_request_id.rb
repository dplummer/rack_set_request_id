require "rack/set_request_id/version"
require "rack/set_request_id/middleware"
require "rack/set_request_id/railtie" if defined?(Rails)

module Rack
  module SetRequestId
  end
end
