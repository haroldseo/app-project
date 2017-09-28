class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.comment = params[:review][:comment]
    @review.rating = params[:review][:rating]
    @cafe = Cafe.find(params[:review][:cafe_id])
    @user = current_user
    @review.cafe = @cafe
    @review.user = @user
    if @review.save
      redirect_to @cafe
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    cafe = @review.cafe
    if @review.update(review_params)
      redirect_to cafe_path(cafe)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    cafe = @review.cafe
    if @review.destroy
      redirect_to cafe_path(cafe)
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment, :user_id, :cafe_id)
  end
end
