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
    # redirection to root_path if not logged into an admin account.
    if @current_admin == nil || @current_admin.empty?
      redirect_to root_path
    else
      @admin = Admin.find(session[:admin_id])

      # Array of stores owned by session_admin
      @stores_array = @admin.stores.map { |store| [store.store_name, store.id] }

      @products = Product.all


      if params[:store].present? && params[:store][:store_id]
        @store_id = params[:store][:store_id]
      else
        @store_id = @admin.stores.first.id
      end

      @selected_store = Store.find(@store_id)

      @selected_store_products = @selected_store.products

      @staff_members = @selected_store.admins.map { |s| "#{s.first_name} #{s.last_name}" }

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
    end
  end


  def add_staff
    if @current_admin == nil || @current_admin.empty?
      redirect_to root_path
    else
      # Array of stores owned by session_admin
      @stores_array = @current_admin[0].stores.map { |store| [store.store_name, store.id] }
    end
  end


  def post_added_staff
    @selected_admin_email = params[:email]
    @admin = Admin.where(:email => @selected_admin_email)
    @selected_store = Store.find(params[:store][:store_id])
    @admin[0].stores << @selected_store
    redirect_to admin_path
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

