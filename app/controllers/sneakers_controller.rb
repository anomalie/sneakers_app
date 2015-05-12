class SneakersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    sneakers = Sneaker.all
    render json: sneakers, only: [:name, :id]
  end

  def show
    sneaker = Sneaker.find(params[:id])
    render json: sneaker, except: [:created_at, :updated_at]
  end

  def search
    if params[:name].present?
      sneaker = Sneaker.find_by_name(params[:name])
    elsif params[:brand].present?
      sneaker = Sneaker.find_by_brand(params[:brand])
    end
    render json: sneaker, except: [:created_at, :updated_at]
  end
end
