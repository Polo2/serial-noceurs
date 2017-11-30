class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: :home

  def home
    @weddings = Wedding.all
  end


end
