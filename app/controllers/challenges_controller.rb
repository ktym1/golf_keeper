class ChallengesController < ApplicationController
# autocomplete :player, :username
	def create
		@player = Player.find(params[:player_id])
		@match = Match.find(params[:match_id])
		@challenge = @match.challenges.build(challenge_params)
		if @challenge.save
			redirect_to player_match_path(@player, @match)
		else
			render player_match_path
		end
	end


	private
	def challenge_params
		params.require(:challenge).permit(:round_id, :match_id, :player_id)
	end

end
