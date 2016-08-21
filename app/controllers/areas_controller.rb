class AreasController < ApplicationController
before_action :authenticate_admin!

	def show

	@area=Area.find(params[:id])

	@places=@area.places.all

	end

	def create
	@state=State.find(params[:state_id])
	@city=City.find(params[:city_id])
	@area=@city.areas.create(area_params)
	@area.state_id=@state.id
	@area.save
	redirect_to city_path(@city)
	end

	def destroy
	@area=Area.find(params[:id]) 
	@area.destroy
	redirect_to city_path(@area.city)
	end

	def edit
	@area=Area.find(params[:id]) 

	end

	 def update
	@area=Area.find(params[:id]) 
    @area.update(area_params)
    redirect_to city_path(@area.city)
  	end


	private def area_params
    params.require(:area).permit(:area)
  end



end
