module Selly
  class Blacklist < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Create
    extend Selly::Operations::Update
    extend Selly::Operations::Destroy
  end
end