class SessionsController < ApplicationController

	def new
	end

	def create
		player = Player.find_by(email: params[:session][:email].downcase)
		if player && player.authenticate(params[:session][:password])
			sign_in player
			redirect_back_or player
		else
			flash.now[:error] = 'Invalid email/password combination'
			render '/app/views/home/index.html.erb'
		end
	end

	def destroy
		sign_out
		redirect_to home_index_path
	end
end
