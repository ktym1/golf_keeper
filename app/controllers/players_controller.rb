class PlayersController < ApplicationController
  def new
  	@player = Player.new
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save
      sign_in @player
      flash[:success] = "Welcome to the Sample App"
  		redirect_to @player
  	else
  		render 'new'
  	end
  end  

  def show
    @player = Player.find(params[:id])
  end
  
  def edit
    @player = Player.find(params[:id])
  end
  
  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
      flash[:success] = "Profile updated"
      redirect_to @player
    else
      render "edit"
    end
  end
 
  private
  def player_params
  	params.require(:player).permit(:email, :username, :password, :password_confirmation)
  end
end
