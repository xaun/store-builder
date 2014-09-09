class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_admin
  before_action :reveal_sidebar
  before_action :main_container_selector


  private
  # Controls when to show/hide the admin sidebar in application.haml.
  def reveal_sidebar
    if session[:admin_id] &&
       params[:controller] != 'stores' &&
       params[:controller] != 'pages' &&
       params[:action] != 'account_setup' &&
       params[:controller] != 'sessions' &&
       params[:action] != 'account_create'
       @sidebar_reveal = 'sidebar'
     else
      @sidebar_reveal = false
    end
  end

  # Adds the class of 'store-main-container' to the div#main-container
  # when within the stores_controller.
  def main_container_selector
    if params[:controller] == 'stores'
      @main_container_selector = 'store-main-container'
    else
      @main_container_selector = false
    end
  end

  def authenticate_admin
    if session[:admin_id].present?
      @current_admin = Admin.where(:id => session[:admin_id])
    end

    if @current_admin.nil?
      session[:admin_id] = nil
    end
  end
end
