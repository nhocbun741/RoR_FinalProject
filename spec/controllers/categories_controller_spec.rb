require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
    
    # let!(:categories) {create_list(:category,3)}
    
    describe "products" do
    let!(:product) {create(:product)} 
    let!(:category) {create(:category)}
        it "get products by category" do
            get :products, params:{ id: category.id }
            expect(response).to render_template :products
        end

        # it "get product" do
            
        #     binding.pry
            
        #     get :products, params: { id: category.id }
        #     expect(assigns(:product)).to eq product
        # end

    end


end