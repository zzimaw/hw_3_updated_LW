class PlacesController < ApplicationController
  def index
    # find all Company rows
    @places = Place.all
    # render companies/index view
  end
  
  def show
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })

  end

  def new
    # render view with new Place form
  end

  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]

    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end


end
