require 'selly/version'
require 'selly/operations/list'
require 'selly/operations/show'
require 'selly/resource'
require 'selly/blacklist'
require 'selly/exchange_rates'
require 'selly/orders'
require 'selly/products'
require 'selly/statistics'

module Selly
  API_ROOT = 'https://selly.gg/api'.freeze
  USER_AGENT = "[Selly Ruby v#{VERSION}] Ruby-#{RUBY_VERSION} - #{RUBY_PLATFORM}".freeze
  JSON_MIME = 'application/json'.freeze

  class << self
    attr_accessor :api_key, :api_email


    def request_headers
      {
        'User-Agent': USER_AGENT,
        'Accept': JSON_MIME,
        'Content-Type': JSON_MIME,
        'X-Auth-Email': @api_email,
        'X-Auth-Key': @api_key
      }
    end
  end
end
