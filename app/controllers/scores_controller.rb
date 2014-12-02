class ScoresController < ApplicationController
	before_action :get_score, :only => [:edit, :update]
	# def new
	# 	@score = Score.new
	# end

	# def create
 #     @round = Round.find(params[:round_id])
 #     @score = @round.scores.build(score_params)
 #      if @score.save
 #      	redirect_to player_round_url(@round.player, @round)
 #      else
 #        render :new
 #      end
		# end

	def get_score
		begin
			@score = Score.find(params[:id])
		rescue
			render 'shared/not_found'
		end
	end

	def update
		respond_to do |format|
		    if @score.update_attributes(score_params)
		      format.html { redirect_to(@round, :notice => 'Score was successfully updated.') }
		      format.json { respond_with_bip(@score) }
		    else
		      format.html { render :action => "edit" }
		      format.json { respond_with_bip(@score) }
		    end
		end
	end

	def edit
	end

	private

		def score_params
			params.require(:score).permit(:hole_id, :round_id, :score)
		end
end
