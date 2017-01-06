class SessionsController < ApplicationController
  def index
  end

  def new

  end

  def show
  end

  def edit
  end

  def update
  end

  def create
    @customer = Customer.where(email: params[:email]).first
    if @customer && @customer.password == params[:password]
     session[:customer_id] = @customer.id
     redirect_to @customer
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to root_path
  end
end
