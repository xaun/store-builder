class ProductsController < ApplicationController


  def index
    authenticate_admin
    if @current_admin == nil
      redirect_to root_path
    else
      @products = @current_admin[0].stores.first.products
    end
  end
end

# = render partial: "filename" #no filetype
