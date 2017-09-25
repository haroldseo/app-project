class CafesController < ApplicationController
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
