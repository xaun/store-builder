class ProductsController < ApplicationController


  def index
    authenticate_admin
    if @current_admin == nil || @current_admin.empty?
      redirect_to root_path
    else
      @products = @current_admin[0].stores.first.products
    end
  end

  def new
    @products = Product.new
  end

  def create
    # code for products/new..
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(
      :title,
      :image,
      :description,
      :product_type,
      :price,
      :sku,
      :weight,
      :quantity,
      :url_handle,
      :visibility,
      :store_id
    )
  end
end
