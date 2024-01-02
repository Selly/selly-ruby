module Selly
  class Domains < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Show
    extend Selly::Operations::Create
    extend Selly::Operations::Destroy
  end
end