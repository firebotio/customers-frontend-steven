module Firebot
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
