class StoresController < ApplicationController

  def select
    # Ask how to do this using a private method.
    @store = Store.find params[:store][:store_id]

    redirect_to "/stores/#{@store.id}"
  end

  def home
    # raise 'Congratulations, you made it'
    @store = Store.find params[:id]
  end

  private
  # def store_select_params
  #   params.require(:store).permit(:store_id)
  # end
end
