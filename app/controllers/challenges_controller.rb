class ChallengesController < ApplicationController

	def create
		@player = Player.find(params[:player_id])
		@match = Match.find(params[:match_id])
		@challenge = @match.challenges.build(challenge_params)
			if @challenge.save
				redirect_to player_match_challenge_path(@player, @match, @challenge)
			end
	end


	private
	def challenge_params
		params.require(:challenge).permit(:round_id, :match_id, :player_id)
	end

end
