class StoresController < ApplicationController

  # Backbone scripts live on this view ('stores#shopfront').
  def shopfront
    @store = Store.find params[:id]
  end

  def products
    # @products is fetched by a Backbone data fetch function with
    # params[:store_id] & params[:visibility].
    @products = Product.where(:store_id => params[:store_id], :visibility => params[:visibility])

    # Learning moment!..
    # Raising params.inspect shows in the console & network tab anywhere in the app except on the rails route for this controller#action. Then pry-debugger fires.
    # raise params.inspect
    respond_to do |format|
      # Allows products to be viewed in html format e.g admin/products
      format.html {}
      # renders @products as json for backbone.
      format.json { render :json => @products }
    end
  end

  def create_guest
    @guest = Guest.create guest_params

    respond_to do |format|
      format.html {}
      format.json { render :json => @guests}
    end
  end

  def confirm_checkout

    @order = Order.new order_params
    # Searching for the guest that matches the params send from Backbone.
    @guest = Guest.where params[:order][:guest]
    # Associate the guest account with the order.
    @order.guest = @guest[0]

    # Iterate & push the product_id from each of the order_products.
    order_products_array = []
    params[:order][:items].each do |item|
      order_products_array << item["product_id"]
    end

    # Search products database for each id and associate with the order.
    order_products_array.each do |product_id|
      @order.products << Product.find(product_id)
    end

    @order.save

    respond_to do |format|
      format.html {}
      format.json { render :json => @order }
    end

  end

  # def cart
  #   @object = params
  #   render :json => @object
  # end

  private
  def guest_params
    params.require(:guest).permit(
      :first_name,
      :last_name,
      :email,
      :phone_number,
      :street,
      :city,
      :postcode,
      :country,
      :state,
      :store_id
    )
  end

  def order_params
    params.require(:order).permit(
      :user_id,
      :store_id,
      :guest_id,
      :confirmed,
      :payment_status,
      :completed
    )
  end
end
