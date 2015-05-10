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

  class Service < Client
    def email(options = {})
      response = HTTParty.post(
        endpoint("email"), query: options, headers: headers
      )
      json = JSON.parse response.body
      json["errors"] ? json["errors"] : true
    end

    private

    def endpoint(service)
      [api_url, api_version, "services", service].join "/"
    end
  end
end
