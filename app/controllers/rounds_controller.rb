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
    @courses = Course.all
    @tees = Tee.all
    @round = @player.rounds.build(round_params)
      if @round.save
      redirect_to player_round_url(@player, @round)
      else
        render :new
      end
  end

  def show
    @player = Player.find(params[:player_id])
    @round = Round.find(params[:id])
  end

  def edit
  end

  def update
    respond_to do |format|
      if @round.update_attributes(round_params)
        format.html { redirect_to(@round, :notice => 'Status was successfully updated.') }
        format.json { respond_with_bip(@round) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@round) }
      end
    end
  end

  def destroy
  end

    private

      def round_params
        params.require(:round).permit(:course_id, :round_length, :player_id, :tee_id, :round_complete)
      end
end
