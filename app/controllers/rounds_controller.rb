class RoundsController < ApplicationController
  before_action :get_round, :only => [:show, :edit, :update]

  def get_round
    begin
      @round = Round.find(params[:id])
    rescue
      render 'shared/not_found'
    end
  end
  
  def new
    @player = Player.find(params[:player_id])
    @round = Round.new
    @courses = Course.all
    @tees = Tee.all
  end

  def create
    @player = Player.find(params[:player_id])
    @round = @player.rounds.build(round_params)
      if @round.save
      redirect_to player_round_url(@player, @round)
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

    private

      def round_params
        params.require(:round).permit(:course_id, :round_length, :player_id, :start_hole)
      end
end
