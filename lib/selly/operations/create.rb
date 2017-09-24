require 'http'

module Selly
  module Operations
    module Create
      def create(params = {})
        HTTP.post("#{API_ROOT}#{resource_url}", headers: Selly.request_headers, form: params).parse
      end
    end
  end
end