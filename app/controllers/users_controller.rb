class UsersController < ApplicationController

	#signup get and post request as new and create respectively. 
	#load the signup form
	def new
		@user = User.new
	end
	# signup and set the session and login the user
	def create
		@user = User.new(user_params)

		if @user.save
			#login the user
			session[:id] = params[:id]
			#redirect to user home page
			redirect_to home_path

		else
			render :new
			
		end
		
	end

	def home
		
		
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password)
		
	end

end
