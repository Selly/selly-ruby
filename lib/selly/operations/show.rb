require 'http'

module Selly
  module Operations
    module Show
      def show(resource_id, options = {})
        response = HTTP.get("#{API_ROOT}#{resource_url}/#{resource_id}", headers: Selly.request_headers, params: options)

        parsed = response.parse
        if parsed.class == Hash && (response.code < 200 || response.code > 300)
          raise SellyError.new(parsed['errors']), parsed['message']
        end

        parsed
      end
    end
  end
end