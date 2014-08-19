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
      render "pages/index"
    end
  end

  # view contains more detailed account_setup form.
  def account_setup
  end

  # update the account & store with details sent from account_setup.
  def account_complete
    @admin = Admin.find(session[:admin_id])
    if @admin.update(admin_params) && @admin.stores.first.update(store_params)
      redirect_to admin_path
    else
      render :account_setup
    end
  end

  # Home page for a signed in admin.
  def dashboard
    @admin = Admin.find(session[:admin_id])
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

