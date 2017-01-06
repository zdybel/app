class CustomersController < ApplicationController

	before_action :set_customer, only: [:show,:edit,:update,:destroy]

	def index
		@customers = Customer.all
	end
	def show
		@cart = @customer.cart
		@wishlist = @customer.wishlist
	end
	def new
		@customer = Customer.new
	end
	def create
		@customer = Customer.create(customer_params)
		Cart.create(customer_id: @customer.id)
		Wishlist.create(customer_id: @customer.id)
		redirect_to @customer 
	end
	def edit
	end
	def update

	end
	def destroy
	end


	

		# action
		# rout
		# link send to that logout
	

	private

	def customer_params
		params.require(:customer).permit(:fname, :lname, :email, :password)
	end

	def set_customer
		@customer = Customer.find(params[:id])
	end 
end
