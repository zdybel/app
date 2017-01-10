class CustomersController < ApplicationController

	before_action :set_customer, only: [:show,:edit,:update,:destroy]
	#before_validation
	#after_save :create_customers_cart
	#before_save :encrypt



	def index
		@customers = Customer.all
		@customer = Customer.new
	end
	def show
		@cart = @customer.cart
		@cart_prices_array = []
		@cart.products.each do |product|
			@cart_prices_array.push(product.price)
		end
		@cart_total = @cart_prices_array.inject(:+)
		@wishlist = @customer.wishlist
	end
	def new
		@customer = Customer.new
	end
	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			session[:customer_id] = @customer.id
			Cart.create(customer_id: @customer.id)
			Wishlist.create(customer_id: @customer.id)
			redirect_to @customer 
		else 
			flash[:notice] = "Error creating account!"
			render new_customer_path
		end
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
		params.require(:customer).permit(:fname, :lname, :email, :password, :password_confirmation)
	end

	def set_customer
		@customer = Customer.find(params[:id])
	end 
end
