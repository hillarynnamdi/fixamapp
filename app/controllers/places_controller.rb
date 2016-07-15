class PlacesController < ApplicationController

	def create
	@state=State.find(params[:state_id])
	@city=City.find(params[:city_id])
	@area=Area.find(params[:area_id])
	@place=@area.places.create(place_params)
	@place.state_id=@state.id
	@place.city_id=@city.id
	@place.save
	redirect_to area_path(@area)
	end

	def destroy
	@place=Place.find(params[:id])
	@place.destroy
	redirect_to area_path(@place.area)
	end


	def edit
	@place=Place.find(params[:id]) 

	end

	 def update
	@place=Place.find(params[:id]) 
    @place.update(place_params)
    redirect_to area_path(@place.area)
  	end

	private def place_params
    params.require(:place).permit(:place)
  end



end
