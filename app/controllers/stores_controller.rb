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

  def guests
    guest = Guest.create guest_params

    @guests = Guest.all
    respond_to do |format|
      format.html {}
      format.json { render :json => @guests}
    end
  end

  def confirm_checkout
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
      :state
    )
  end
end
