class ProductsController < ApplicationController
    before_action :product_params, only: [:create, :update]
    def index 
        @products = Product.order(created_at: :desc).page params[:page]
        @categories = Category.all
        @order_item = current_order.order_items.new
    end
    def show
        @product = Product.find(params[:id])
    end
    def new
        @product = Product.new
    end
    def create
        @product = Product.new(product_params)
        if @product.save
            flash.now[:notice] = "You had successfully created!"
            redirect_to products_path
        else
            flash.now[:notice] = "You had fail created!"
            render :new
        end
    end
    def edit
        @product = Product.find(params[:id])
        render :new
    end
    def update
        @product = Product.find(params[:id])
        if @product.update(product_params)
            flash.now[:notice] = "You had successfully updated!"
            redirect_to products_path
        else
            flash.now[:notice] = "You had fail updated!"
            render :new
        end
    end
    def destroy
        @product = Product.find(params[:id])
        if @product.destroy
            flash.now[:notice] = "You had successfully deleted!"
            redirect_to products_path
        else
            flash.now[:notice] = "You had fail deleted!"
            render :new   
        end
    end
    
    def product_params
        params.require(:product).permit(:ProductID,
                                        :WeightMeasure,
                                        :WeightUnit,
                                        :Description,
                                        :DateOfSale,
                                        :ProductPicUrl,
                                        :Status,
                                        :Quantity,
                                        :UoM,
                                        :CurrencyCode,
                                        :Width,
                                        :Depth,
                                        :Height,
                                        :DimUnit,
                                        :category_id,
                                        :supplier_id,
                                        :Name,
                                        :Price)
    end
end