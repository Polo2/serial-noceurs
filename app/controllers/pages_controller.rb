class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: :home

  def home
    @weddings = Wedding.future
    @experiences = Wedding.passed
  end

end
