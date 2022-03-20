class ProductController < ApplicationController

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
end
