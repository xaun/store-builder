class AdminsController < ApplicationController


  # - Creating a Bang-Up store - #
  #
  # pages#index sign-up form gets sent to account_create.
  def account_create
    # instantiating both a new Admin & Store with params from pages#index sign-up form.
    @store = Store.new store_params
    @admin = Admin.new admin_params

    if @admin.save && @store.save
      @admin.stores << @store
      session[:admin_id] = @admin.id

      redirect_to admin_account_setup_path
    else
      # need render to keep errors.
      render 'pages/index'
    end
  end

  # view contains more detailed account_setup form.
  def account_setup
    authenticate_admin
    if @current_admin == nil
      redirect_to root_path
    end
  end

  # update the account & store with params sent from account_setup form.
  def account_complete
    @admin = Admin.find(session[:admin_id])
    if @admin.update(admin_params) && @admin.stores.first.update(store_params)
      redirect_to admin_path
    else
      render :account_setup
    end
  end



  # - Managing a Bang-Up store - #
  #
  # Home page for a signed in admin.
  def dashboard
    # makes sure session is an admin account
    begin
      @admin = Admin.find(session[:admin_id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
    end
    # Array of stores owned by session_admin
    @stores_array = @admin.stores.map { |store| [store.store_name, store.id] }

    @products = Product.all

    # store_id from store select input
    @store_id = params[:store][:store_id]

    @selected_store = Store.find(@store_id)

    @selected_store_products = @selected_store.products

    @price_array = []
    @hidden_items_array = []
    @inventory_array = []
    @gross_array = []


    @selected_store.products.each do |product|

      sum = product.quantity * product.price

      @gross_array << sum
      @price_array << product.price
      @inventory_array << product.quantity

      if product.visibility == false
        @hidden_items_array << product
      end
    end

    @gross_array.inject do |sum, x|
      @gross_income = sum + x
    end


    @selected_store.admins.each do |admin|


    binding.pry

  end




  private
  def admin_params
    params.require(:admin).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end

  def store_params
    params.require(:store).permit(
      :store_name,
      :phone_number,
      :street,
      :city,
      :postcode,
      :country,
      :state
    )
  end
end

