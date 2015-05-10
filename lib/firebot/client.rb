module Firebot
  class Client
    def initialize(options = {})
      @application_key = options[:application_key]
      @application_id  = options[:application_id]
    end

    private

    def api_url
      ENV["FIREBOT_API_URL"]
    end

    def api_version
      ENV["FIREBOT_API_VERSION"]
    end

    def headers
      {
        "Content-Type"              => "application/json",
        "X-Firebot-Application-Key" => @application_key,
        "X-Firebot-Application-Id"  => @application_id
      }
    end
  end
end
