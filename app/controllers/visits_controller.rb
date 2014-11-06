class VisitsController < ApplicationController
	def index
		@location = Location.find(params[:location_id])
		@visits = @location.visits
	end

	def show
		@location = Location.find(params[:location_id])
		@visits = @location.visits.find(params[:id])
	end
	
	def new
		@location = Location.find(params[:location_id])
		@visit = @location.visits.new
	end
	
	def create
		@location = Location.find(params[:location_id])
		@visit = @location.visits.new visit_params

		if @visit.save
			redirect_to location_visits_path @location
		else
			render 'new'
		end
	end

	def edit
		@location = Location.find(params[:location_id])
		@visit = @location.visits.find(params[:id])
	end

	def update
		@visit = Visit.find(params[:id])
		@location = Location.find(params[:location_id])
		if @visit.update_attributes visit_params
			redirect_to location_visits_path(@visit.location)
		else
			@errors = @visit.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		@visit = Visit.destroy(params[:id])
		redirect_to location_visits_path(@visit.location)
	end

	private
	def visit_params
		params.require(:visit).permit(:user_name, :from_date, :to_date)
	end
end
