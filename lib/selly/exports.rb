module Selly
  class Exports < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Show
    extend Selly::Operations::Create
    extend Selly::Operations::Destroy
  end
end