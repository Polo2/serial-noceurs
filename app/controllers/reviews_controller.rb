class ReviewsController < ApplicationController
  def create
    @wedding = Wedding.find(params[:wedding])
    @user = User.find(params[:user_id])
    @wedding_review = Review.new(review_params)
    @user_review = Review.new(review_params)
    @review.wedding = @wedding
    @review.user = @user
    if @wedding_review.save
      redirect_to wedding_path(@wedding)
    else
      render 'weddings/show'
    end
    if @user_review.save
      redirect_to users_profile_path(@user)
    else
      render 'weddings/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
