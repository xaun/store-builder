class SessionsController < ApplicationController

  def login
  end

  def create
    admin = Admin.find_by(:email => params[:email])
    if admin.present? && admin.authenticate(params[:password])
      session[:admin_id] = admin.id # sessions are private hashes

      redirect_to admin_path
    else
      render :login
      flash[:notice] = "Invalid login. Please try again."
    end
  end

  def logout
    session[:admin_id] = nil
    redirect_to root_path
  end
end
