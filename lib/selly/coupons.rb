module Selly
  class Coupons < Resource
    extend Selly::Operations::List
    extend Selly::Operations::Show
    extend Selly::Operations::Create
    extend Selly::Operations::Update

    def create(params)
      super({coupon: params})
    end

    def update(id, params)
      super(id, {coupon: params})
    end
  end
end