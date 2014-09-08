class OrdersController < ApplicationController

  def index
    authenticate_admin
    if @current_admin == nil || @current_admin.empty?
      redirect_to root_path
    else
      # View uses @stores to iterate through each store and store.products.
      @stores = @current_admin[0].stores
      # View code pushes product prices and then runs inject on this array.
      @price_array = []
    end
  end

  def show
  end
end
