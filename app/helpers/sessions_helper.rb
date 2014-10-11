module SessionsHelper

	def sign_in(player)
		remember_token = Player.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		player.update_attribute(:remember_token, Player.digest(remember_token))
		self.current_user = player
	end
end
