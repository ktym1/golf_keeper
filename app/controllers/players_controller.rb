class PlayersController < ApplicationController
  def new
  	@player = Player.new
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save
  		redirect_to '/players/:id', :notice => "Signed up!"
  	else
  		render 'new'
  	end
  end  

  def show
    @player = Player.find(params[:id])

  end
  
  private
  def player_params
  	params.require(:player).permit(:email, :username, :password, :password_confirmation)
  end
end
