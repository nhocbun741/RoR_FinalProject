require 'rails_helper'

RSpec.describe OrderItemsController, type: :controller do
    describe "create" do
        let!(:order_item){create(:order_item)}
        let!(:order){create(:order)}
        let!(:order_status){create(:order_status)}
        it "create order" do
            
            # binding.pry
            
            post :create, params: {order_status: order_status.attributes, order_item: order_item.attributes }
            expect(assigns(:order)).to order  
        end
        
    end
    
end