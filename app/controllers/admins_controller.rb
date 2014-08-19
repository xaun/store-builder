class AdminsController < ApplicationController

  def step_1
    # Instantiating both Admin & Store with params from pages#index.
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

  def step_2
  end

  def step_3
    @admin = Admin.find(session[:admin_id])
    if @admin.update(admin_params) && @admin.stores.first.update(store_params)
      redirect_to admin_path
    else
      render :step_2
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
      :phone_number,
      :street,
      :city,
      :postcode,
      :country,
      :state
    )
  end
end

