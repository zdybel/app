class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
	end
	def new
	end
	def create
		@products = Product.all
		redirect_to products_path
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
	def remove_from_cart
		@product = Product.find(params[:product_id])
		@customer = Customer.find(session[:customer_id])
		@customer.cart.products.delete(@product)
		redirect_to @customer
	end
	def add_to_wishlist
		@product = Product.find(params[:product_id])
		@customer = Customer.find(session[:customer_id])
		@customer.wishlist.products.push(@product)
		redirect_to @customer 
	end
	def remove_from_wishlist
		@product = Product.find(params[:product_id])
		@customer = Customer.find(session[:customer_id])
		@customer.wishlist.products.delete(@product)
		redirect_to @customer
	end
	def move_to_cart
		@product = Product.find(params[:product_id])
		@customer = Customer.find(session[:customer_id])
		@customer.cart.products.push(@product)
		@customer.wishlist.products.delete(@product)
		redirect_to @customer
	end

end
