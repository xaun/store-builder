class StoresController < ApplicationController

  # Backbone scripts live on this view ('stores#shopfront').
  def shopfront
    @store = Store.find params[:id]
  end
end
