class StoresController < ApplicationController

  def select
    # Refactor to use a private function.
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
