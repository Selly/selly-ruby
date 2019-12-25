module Selly::Webhooks
    class Logs < Selly::Resource
      extend Selly::Operations::List
      extend Selly::Operations::Show
      extend Selly::Operations::Create
      extend Selly::Operations::Update
      extend Selly::Operations::Destroy
    end
end