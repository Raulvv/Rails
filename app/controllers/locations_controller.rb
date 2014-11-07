class LocationsController < ApplicationController
	def index
		@locations = Location.last_created(10)
	end
	def show
		@locations = Location.find(params[:id])
	end

	def new
		@locations = Location.new
	end

	def create
		@locations = Location.new location_params

		if @locations.save
			flash[:notice] = "Has creado tu localización correctamente"
			redirect_to locations_path
		else
			flash[:error] = "No se ha podido crear tu localización. Revisa los campos"
			render 'new'
		end	
	end

	private 

	def location_params
		params.require(:location).permit(:name, :city, :country, :zip_code, :street, :latitude, :longitude, :description)
	end
end
