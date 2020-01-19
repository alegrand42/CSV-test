class BuildingsController < ApplicationController
  
  def index
    @buildings = Building.all
  end
  
  def import
    Building.import(params[:file])
    redirect_to buildings_path, notice: "Data Imported"
  end

  def update_import
    Building.update_import(params[:file])
    redirect_to buildings_path, notice: "Data Updated"
  end
end
