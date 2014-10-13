module SessionsHelper

	def sign_in(player)
		remember_token = Player.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		player.update_attribute(:remember_token, Player.digest(remember_token))
		self.current_user = player
	end

	def sign_out
		current_user.update_attribute(:remember_token, Player.digest(Player.new_remember_token))
		self.current_user = nil
	end
	
	def signed_in?
		!current_user.nil?
	end	
	
	def current_user=(player)
		@current_user = player
	end

	def current_user
		remember_token = Player.digest(cookies[:remember_token])
		@current_user ||= Player.find_by(remember_token: remember_token)
	end
end
