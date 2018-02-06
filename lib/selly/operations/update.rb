require 'http'

module Selly
  module Operations
    module Update
      def update(resource_id, params = {})
        response = HTTP.put("#{API_ROOT}#{resource_url}/#{resource_id}", headers: Selly.request_headers, json: params)

        parsed = response.parse
        if parsed.class == Hash && (response.code < 200 || response.code > 300)
          raise SellyError.new(parsed['errors']), parsed['message']
        end
      end
    end
  end
end