require 'rails_helper'

RSpec.describe Order, type: :model do
  context "association" do
    it { should belong_to(:order_status) }
    it { should have_many(:order_items) } 
  end
  
  context "logic" do
    let!(:order) {create(:order)} 
    
    it "subtotal" do
      expect(order.subtotal).to eq(199.69)  
    end
  end
  
end
