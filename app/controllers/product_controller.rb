class ProductController < ApplicationController
    def index
        @products = Product.all
    end

    def show 
        @product = Product.find(params[:id])
    end

    def complete 
        @product = Product.find(params[:id])
    end

    def new
        Product.new(title: params[:title], description:params[:description], price:params[:price], user_id:current_user.id).save!
    end
end
