class AdminsController < ApplicationController


  # - Creating a store - #
  #
  # pages#index sign-up form gets sent to account_create.
  def account_create # POST '/'
    # instantiating both a new Admin & Store with params from pages#index sign-
    # up form.
    @store = Store.new store_params
    @admin = Admin.new admin_params

    # Saves the new admin and store instances & associates the store with the
    # admin.stores.
    if @admin.save && @store.save
      @admin.stores << @store
      session[:admin_id] = @admin.id

      redirect_to admin_account_setup_path
    else
      # need render to keep errors.
      render 'pages/index'
    end
  end


  # The view contains a more detailed account_setup form (step 2 signup process).
  def account_setup # GET 'admins#account_setup'
    authenticate_admin
    if @current_admin == nil
      redirect_to root_path
    end
  end


  # Update the account & store with params sent from account_setup form.
  def account_complete # POST '/admin/account_setup'
    @admin = Admin.find(session[:admin_id])

    # This section of the site is built for new admin accounts.
    # Update the admin attributes with more detailed information from the
    # account_setup (step 2) form, && update the their first store which was
    # instantiated at the account_create action.
    if @admin.update(admin_params) && @admin.stores.first.update(store_params)
      ## Sign-up is successful and admin dashboard is loaded.
      redirect_to admin_path
    else
      render :account_setup
    end
  end


  # - Managing a store - #
  #
  # Home page for a signed in admin: 'Dashboard'.
  def dashboard
    # redirection to root_path if not logged into an admin account.
    if @current_admin == nil || @current_admin.empty?
      redirect_to root_path
    else

      @products = Product.all

      # See private function at the bottom. Refactored to be more DRY..
      store_options_for_select

      @selected_store_products = @selected_store.products

      @staff_members = @selected_store.admins.map { |s| "#{s.first_name} #{s.last_name}" }

      @price_array = []
      @hidden_items_array = []
      @inventory_array = []
      @gross_array = []

      # Store products analytics
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
      # Array of stores owned by session_admin, this is shown in a select
      # input in the add_staff views form. It allows the admin to select which
      # store to add a new staff member to.
      @stores_array = @current_admin[0].stores.map { |store| [store.store_name, store.id] }
    end
  end


  # Queries DB for @selected_admin_email and associates the admin account with
  # with the @selected_store.
  def post_added_staff
    @selected_admin_email = params[:email]
    @admin = Admin.where(:email => @selected_admin_email)
    @selected_store = Store.find(params[:store][:store_id])
    @admin[0].stores << @selected_store
    redirect_to admin_path
  end



  def settings
    # redirection to root_path if not logged into an admin account.
    if @current_admin == nil || @current_admin.empty?
      redirect_to root_path
    else
      # See private function at the bottom. Refactored to be more DRY..
      store_options_for_select
    end
  end


  def update_settings

    if session[:admin_id] && params[:admin]

      # FINALLY, learnt my lesson and used a dam function.
      store_options_for_select

      @admin.update(admin_params)

      flash[:admin_success] = "Settings Updated!"
      render :settings

    elsif params[:store] && params[:store][:store_id]

      @store = Store.find(params[:store][:store_id])
      @store.update(store_params)

      store_options_for_select

      flash[:store_success] = "Settings updated!"
      render :settings
    end
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
      :legal_business_name,
      :phone_number,
      :street,
      :city,
      :postcode,
      :country,
      :state,
      :facebook,
      :twitter,
      :instagram,
      :youtube
    )
  end

  def store_options_for_select
    @admin = Admin.find(session[:admin_id])
    # Mapping an array of @admin associated stores.
    @stores_array = @admin.stores.map { |store| [store.store_name, store.id] }

    # Sets @store_id with params, or stops site from breaking when the store
    # select input is not loaded.
    if params[:store].present? && params[:store][:store_id]
      # Assigns store_id from select input params to an instance variable.
      @store_id = params[:store][:store_id]
    else
      # Assigns store_id from the first store belonging to the @admin.
      @store_id = @admin.stores.first.id
    end

    @selected_store = Store.find(@store_id)
  end
end

