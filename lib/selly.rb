require 'selly/version'
require 'selly/selly_error'
require 'selly/operations/create'
require 'selly/operations/list'
require 'selly/operations/show'
require 'selly/operations/update'
require 'selly/resource'
require 'selly/blacklist'
require 'selly/exchange_rates'
require 'selly/orders'
require 'selly/pay'
require 'selly/products'
require 'selly/product_groups'
require 'base64'

module Selly
  API_ROOT = 'https://selly.io/api/v2'.freeze
  USER_AGENT = "[Selly Ruby v#{VERSION}] Ruby-#{RUBY_VERSION} - #{RUBY_PLATFORM}".freeze
  JSON_MIME = 'application/json'.freeze

  class << self
    attr_accessor :api_key, :api_email


    def request_headers
      {
        'User-Agent': USER_AGENT.strip,
        'Accept': JSON_MIME.strip,
        'Authorization': 'Basic ' + Base64.encode64("#{@api_email}:#{@api_key}").delete!("\n")
      }
    end
  end
end
