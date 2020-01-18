class BuildingsController < ApplicationController
  
  def index
    @buildings = Building.all
  end
  
  def import
    Building.import(params[:file])
    redirect_to buildings_path, notice: "Data Imported"
  end
end
