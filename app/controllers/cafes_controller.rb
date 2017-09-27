class CafesController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    if logged_in? && current_user.admin
      @cafes = Cafe.all.order(name: :asc)
    else
      @cafes = Cafe.where(published: true).order(name: :asc)
    end
  end

  def show
    @cafe = Cafe.find(params[:id])
  end

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(cafe_params)
    @cafe.published = true if current_user.admin
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

  def toggle_publish
    @cafe = Cafe.find(params[:id])
    @cafe.update(published: !@cafe.published)
    redirect_to cafes_path
  end 

  private
  def cafe_params
    params.require(:cafe).permit(:name, :hours, :address, :phone)
  end
end
