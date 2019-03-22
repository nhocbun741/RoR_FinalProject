FactoryBot.define do
  factory :order do
    order_status { create(:order_status)}
    # subtotal { 199.69 }
    # total { 199.69}
  end
end
