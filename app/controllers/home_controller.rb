class HomeController < ApplicationController
	def top
		if user_signed_in?
		redirect_to users_path
		else
		redirect_to new_user_session_path
		end
	end
end
