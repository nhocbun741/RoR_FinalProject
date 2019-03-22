require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  context "validate presence" do
    it { should validate_presence_of(:quantity) }
    
  end
  
  context "association" do
    it { should belong_to(:product) }
    it { should belong_to(:order) }  
  end

  context "logic method" do
    let!(:order_item) { create(:order_item) } 
    it "unit price of order_item" do
      expect(order_item.unit_price).to eq(199.69)
    end
    
    it "total price of order_item" do
      expect(order_item.total_price).to eq(199.69)  
    end

  end
  
end
