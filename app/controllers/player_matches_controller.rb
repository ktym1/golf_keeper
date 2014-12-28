class PlayerMatchesController < ApplicationController
	
	def new
		
	end

	def create
		@player = Player.find(params[:player_id])
		@match = Match.find(params[:match_id])
		@player_match = PlayerMatch.new(player_match_params)
	end


	private
	def player_match_params
		params.require(:player_match).permit(:round_id, :match_id, :player_id)
	end

end
