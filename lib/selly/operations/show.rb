require 'http'

module Selly
  module Operations
    module Show
      def show(resource_id, options = {})
        HTTP.get("#{API_ROOT}#{resource_url}/#{resource_id}", headers: Selly.request_headers, params: options).parse
      end
    end
  end
end