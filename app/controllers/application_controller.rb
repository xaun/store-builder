class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_admin
  before_action :reveal_sidebar


  private
  # This is amazing.
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

  def authenticate_admin
    if session[:admin_id].present?
      @current_admin = Admin.where(:id => session[:admin_id])
    end

    if @current_admin.nil?
      session[:admin_id] = nil
    end
  end
end
