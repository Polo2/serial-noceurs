class ReviewsController < ApplicationController
  def create
    @wedding = Wedding.find(params[:wedding])
    # @user = User.find(params[:user_id])
    @wedding_review = Review.new(review_params)
    # @user_review = Review.new(review_params)
    @wedding_review.wedding = @wedding
    # @review.user = @user
    if @wedding_review.save
      respond_to do |format|
        format.html { redirect_to wedding_path(@wedding) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'weddings/show' }
        format.js  # <-- idem
      end
    end
    # if @user_review.save
    #   redirect_to users_profile_path(@user)
    # else
    #   render 'weddings/show'
    # end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
