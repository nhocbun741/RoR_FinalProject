class CategoriesController < ApplicationController 
    def products
        # @categories = Product.where(category: Category.find(params[:id]))
        @products = Category.find(params[:id]).products.order(created_at: :desc).page params[:page]
        @categories = Category.all
        @order_item = current_order.order_items.new
    end
end