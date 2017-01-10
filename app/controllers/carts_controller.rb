class CartsController < ApplicationController
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
    @cart_total = params[:cart_total]
    @customer = Customer.find(session[:customer_id])
    @cart = @customer.cart
    flash[:notice]= "You spent #{@cart_total}"
    @cart.products.each do |product|
      product.delete
    end
    redirect_to @customer
  end
end
