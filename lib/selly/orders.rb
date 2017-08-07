module Selly
  class Orders < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Show
  end
end