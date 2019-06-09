class ApplicationController < ActionController::Base

	helpers do 

		def current_user
			@current_user ||= User.find_by(id: seesion[:id])
		end

		def user_signed_in?
			!!current_user
			
		end

		
	end
end
