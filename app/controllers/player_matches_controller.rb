class PlayerMatchesController < ApplicationController
	autocomplete :player, :username

	def new
		@players = Player.all
		@player = Player.find(params[:player_id])
		@match = Match.find(params[:match_id])
		@player_match = PlayerMatch.new
	end

	def create
		@player = Player.find(params[:player_id])
		@match = Match.find(params[:match_id])
		@player_match = PlayerMatch.new(player_match_params)
			if @player_match.save
				redirect_to player_match_player_match_path(@player, @match, @player_match)
			end
	end


	private
	def player_match_params
		params.require(:player_match).permit(:round_id, :match_id, :player_id)
	end

end
