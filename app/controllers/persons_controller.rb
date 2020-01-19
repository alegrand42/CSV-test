class PersonsController < ApplicationController
  
  def index
    @persons = Person.all
  end
  
  def import
    Person.import(params[:file])
    redirect_to root_url, notice: "Data Imported"
  end

  def update_import
    Person.update_import(params[:file])
    redirect_to root_url, notice: "Data updated"
  end
end
