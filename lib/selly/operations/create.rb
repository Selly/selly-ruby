require 'http'

module Selly
  module Operations
    module Create
      def create(params = {})
        response = HTTP.post("#{API_ROOT}#{resource_url}", headers: Selly.request_headers, json: params)

        parsed = response.parse
        if parsed.class == Hash && (response.code < 200 || response.code > 300)
          raise SellyError.new(parsed['errors']), parsed['message']
        end
      end
    end
  end
end