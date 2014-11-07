class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save
			flash[:notice]="El usuario se ha creado satisfactoriamente"
			redirect_to users_path
		else
			flash[:error] = "No se ha podido crear el usuario."
			render 'new'
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :email)
	end
end
