class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    #Step 1 : only one tag
    # @plant = Plant.find(params[:plant_id])
    # @tag = Tag.find(params[:plant_tag][:tag])
    # @plant_tag = PlantTag.new
    # @plant_tag.plant = @plant
    # @plant_tag.tag = @tag
    # plant_tag.save
    # redirect_to garden_path(@plant.garden)

    # Step 2 : multiple tags
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @tags.each do |tag|
      plant_tag = PlantTag.new(plant: @plant, tag: tag)
      plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end

  def destroy
    @plant_tag = PlantTag.find(params[:id])
    @plant_tag.destroy
    redirect_to garden_path(@plant_tag.plant.garden)
  end
end
