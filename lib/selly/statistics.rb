module Selly
  class Statistics < Resource
    extend Selly::Operations::Show

    def self.income(options = {})
      self.show('/income', options)
    end

    def self.day_income(options = {})
      self.show('/day_income', options)
    end

    def self.views(options = {})
      self.show('/views', options)
    end
  end
end