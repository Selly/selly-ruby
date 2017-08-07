require 'http'

module Selly
  module Operations
    module List
      def list(options = {})
        HTTP.get("#{API_ROOT}#{resource_url}", headers: Selly.request_headers, params: options).parse
      end
    end
  end
end