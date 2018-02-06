module Selly
  class ProductGroups < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Show
    extend Selly::Operations::Create
    extend Selly::Operations::Update

    def create(params)
      super({product_group: params})
    end

    def update(id, params)
      super(id, {product_group: params})
    end
  end
end