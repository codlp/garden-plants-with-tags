class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def index
    @gardens = Garden.all
  end

  def show
    @plant = Plant.new
  end

  def new
    @garden = Garden.new
  end

  def edit
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.save
  end

  def update
   @garden.update(garden_params)
  end

  def destroy
    @garden.destroy
    redirect_to gardens_url
  end

  private
    def set_garden
      @garden = Garden.find(params[:id])
    end

    def garden_params
      params.require(:garden).permit(:name, :picture)
    end
end
