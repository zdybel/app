class ProductsController < ApplicationController
	def index
	end
	def show
	end
	def new
	end
	def create
	end
	def edit
	end
	def update
	end
	def destroy
	end
	def add_to_cart
		@product = Product.find(params[:product_id])
		@customer = Customer.find(session[:customer_id])
		
	end
	def add_to_wishlist
	end
end
