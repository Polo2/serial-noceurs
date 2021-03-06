class WeddingsController < ApplicationController
  before_action :set_wedding, only: [:show, :edit, :update, :destroy]

  def index
    @weddings = Wedding.future
    @experiences = Wedding.passed
  end

  # GET /weedings/:id
  def show
    @registry = Registry.new
    @review = Review.new
    @user_id = current_user
  end

  def new
    @wedding = Wedding.new
  end

  def create
    @wedding = Wedding.new(wedding_params)
    @wedding.user = current_user
    if @wedding.save
      redirect_to wedding_path(@wedding)
    else
      render 'weddings/new'
    end
  end

  def edit
  end

  def update
    current_user.weddings.find(params[:id])
    @wedding.update(wedding_params)
    redirect_to wedding_path
  end

  def destroy
    @wedding.destroy
    redirect_to weddings_path
  end


  private

  def set_wedding
    @wedding = Wedding.find(params[:id])
  end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def wedding_params
    params.require(:wedding).permit(:title, :description, :date, :location, :capacity, :photo, :price)
  end
end
