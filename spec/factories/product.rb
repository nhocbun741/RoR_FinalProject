FactoryBot.define do
    factory :product do
      ProductID { "Ruby" }
      WeightMeasure  { 3 }
      Description {"Khong"}
      Status {"Available"}
      Width { 4.5 }
      Depth { 4.6 }
      Height {6.4 }
      category { create(:category) }
      supplier { create(:supplier) }
      Name { "product1" }
      Price { 199.69 }
    end
  end