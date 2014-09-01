class ProductsController < ApplicationController


  def index
    authenticate_admin
    if @current_admin == nil || @current_admin.empty?
      redirect_to root_path
    else
      # View uses @stores to iterate through each store and store.products.
      @stores = @current_admin[0].stores

      # when params[:store_id] exists, store.products of that id are made
      # available via @products.
      @products = Product.where(:store_id => params[:store_id], :visibility => params[:visibility])

      # Learning moment!..
      # Raising params.inspect shows in the console & network tab anywhere in the app except on the rails route for this controller#action. Then pry-debugger fires.
      # raise params.inspect
      respond_to do |format|
        # Allows products to be viewed in html format e.g admin/products
        format.html {}
        # renders @products as json for backbone.
        format.json { render :json => @products }
      end
    end
  end

  def new
    @products = Product.new
    @stores_array = @current_admin[0].stores.map { |store| [store.store_name, store.id] }
  end

  def create
    product = Product.create product_params
    redirect_to '/admin/products'
  end

  def show
    @product = Product.find params[:id]
  end

  def edit
    @product = Product.find params[:id]
    @stores_array = @current_admin[0].stores.map { |store| [store.store_name, store.id] }
  end

  def update
    product = Product.find params[:id]
    product.update product_params
    redirect_to '/admin/products'
  end

  def destroy
    product = Product.find params[:id]
    product.destroy
    redirect_to '/admin/products'
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
