class OrdersController < ApplicationController

  def index
    authenticate_admin
    if @current_admin == nil || @current_admin.empty?
      redirect_to root_path
    else
      # View uses @stores to iterate through each store and store.products.
      @stores = @current_admin[0].stores
    end
  end

  def show
  end
end
