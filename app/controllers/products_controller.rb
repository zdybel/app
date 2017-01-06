class ProductsController < ApplicationController
	def index
		@products = Product.all
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
		@customer.cart.products.push(@product)
		redirect_to @customer 
	end
	def add_to_wishlist
		@product = Product.find(params[:product_id])
		@customer = Customer.find(session[:customer_id])
		@customer.wishlist.products.push(@product)
		redirect_to @customer 
	end
end
