class ScoresController < ApplicationController
	def new
		@score = Score.new
		@player = Player.find(params[:player_id])
		@round = Round.find(params[:round_id])

	end

	def edit
		@score = Score.find(params[:id])
	end
end
