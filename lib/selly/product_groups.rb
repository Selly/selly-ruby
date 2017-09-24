module Selly
  class ProductGroups < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Show
  end
end