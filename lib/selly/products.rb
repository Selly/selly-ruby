module Selly
  class Products < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Show
    extend Selly::Operations::Create
    extend Selly::Operations::Update
    extend Selly::Operations::Destroy

    def create(params)
      super({product: params})
    end

    def update(id, params)
      super(id, {product: params})
    end
  end
end