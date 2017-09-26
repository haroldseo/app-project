class CafesController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    @cafes = Cafe.all
  end

  def show
  end

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(cafe_params)
    if @cafe.save
      redirect_to cafes_path
    else
      redirect_to new_cafe_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def cafe_params
    params.require(:cafe).permit(:name, :hours, :address, :phone)
  end
end
