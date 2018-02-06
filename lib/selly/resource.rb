require 'cgi'

module Selly
  class Resource
    def self.class_name
      self.name.split('::')[-1]
    end

    def self.resource_url
      "/#{CGI.escape(to_snake_case(class_name))}"
    end

    def self.to_snake_case(string)
      string.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2').
        gsub(/([a-z\d])([A-Z])/, '\1_\2').
        tr('-', '_').
        downcase
    end
  end
end