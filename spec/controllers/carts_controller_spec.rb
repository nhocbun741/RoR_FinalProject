require 'rails_helper'

RSpec.describe CartsController, type: :controller do
    describe "show" do
        let!(:order_item) {create(:order_item)  }
        let!(:order) {create(:order)} 
        it "render template show" do
            get :show
            expect(response).to render_template :show  
        end
        it "description" do
            get :show
            expect(assigns(:order)).to eq order  
        end
        
    end
    
end