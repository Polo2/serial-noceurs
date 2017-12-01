class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:home, :search]

  def home
    @weddings = Wedding.future
    @experiences = Wedding.passed
  end

  def search
    @location = params[:location]
    @rayon = 300
    @count = Wedding.near(@location, @rayon).length
    if @location
      if @count == 0
        @search_answer1 = "No wedding  yet in the #{@rayon} kms around #{@location}..."
        @search_answer2 = "But, you can still : "
      elsif @count == 1
        @search_answer1 = "There's one wedding in the #{@rayon} kms around #{@location}..."
        @search_answer2 = "Just discover it : "
      else
        @search_answer1 = "They are #{@count} wedding's in the #{@rayon} km's area #{@location}..."
        @search_answer2 = "Just discover them :"
      end
    else
      render_to root_path
    end
  end

end
