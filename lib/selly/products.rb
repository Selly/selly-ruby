module Selly
  class Products < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Show
  end
end