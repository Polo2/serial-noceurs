class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :edit, :update, :destroy]

  def index
    @registries = Registry.all
  end

  def show
  end

  def new
    @registry = Registry.new
  end

  def create
    @registry = Registry.new(registry_params)
    @registry.user = current_user
    if @registry.save
      redirect_to registry_path(@registry)
    else
      render 'registries/new'
    end
  end

  def edit
  end

  def update
    current_user.registries.find(params[:user_id])
    @registry.update(registry_params)
    redirect_to registry_path
  end

  def destroy
    @registry.destroy
    redirect_to registries_path
  end

   private

  def set_registry
    @registry = Registry.find(params[:id])
  end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def registry_params
    params.require(:registry).permit(:guest)
  end
end
