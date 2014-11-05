class VisitsController < ApplicationController
	def index
		@visits = Visit.last_created(3)
	end
	def show
		@visits = Visit.find(params[:id])
	end
end
