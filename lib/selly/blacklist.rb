module Selly
  class Blacklist < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Create
    extend Selly::Operations::Update

    def create(params)
      super({blacklist: params})
    end

    def update(id, params)
      super(id, {blacklist: params})
    end
  end
end