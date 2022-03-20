class ProductController < ApplicationController
    skip_before_action :verify_authenticity_token

    # Get products and display on index page
    def index
        @products = Product.all
    end

    # Get specific product and display on a detailed page
    def show 
        @product = Product.find(params[:id])
    end

    # Get specific product and display on a thank you for purchase page
    def complete 
        @product = Product.find(params[:id])
    end

    # Create new product
    def new
        @product = current_user.products.build
    end

    #post new product to database
    def create
        @product = Product.new(params.permit(:title, :description, :user_id, :price, :image))
        if @product.save
            redirect_to product_index_path, alert: "Product created successfully"
        else
            redirect_to new_product_path, alert: "failed"
        end

    end
end