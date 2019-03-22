FactoryBot.define do
  factory :order_item do
    order { create(:order) }
    product { create(:product) }
    unit_price { product.Price }
    quantity { 1 }
    total_price { unit_price * quantity}
  end
end
