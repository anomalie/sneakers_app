class StoresController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    stores = Store.all
    render json: stores, only: [:name, :id]
  end

  def show
    store = Store.find(params[:id])
    render json: store, except: [:created_at, :updated_at], :include => :inventories
  end

end
