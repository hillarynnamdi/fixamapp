class CitiesController < ApplicationController
before_action :authenticate_admin!


	def show
	@city=City.find(params[:id])

	@areas=@city.areas.all

	end

	def create
	@state=State.find(params[:state_id])
	@city=@state.cities.create(city_params)
	redirect_to state_path(@state)
	
	end

	def destroy
	@city=City.find(params[:id])
	@city.destroy
	redirect_to state_path(@city.state)
	end

	def edit
		@city=City.find(params[:id])

	end

	 def update
	@city=City.find(params[:id])
    @city.update(city_params)
    redirect_to state_path(@city.state)
  	end



  private def city_params
    params.require(:city).permit(:city)
  end

end
