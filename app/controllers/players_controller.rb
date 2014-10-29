class PlayersController < ApplicationController
 before_action :signed_in_player, only: [:edit, :update]
 before_action :correct_player, only: [:edit, :update]
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
  end
  
  def update
    if @player.update_attributes(player_params)
      flash[:success] = "Profile updated"
      redirect_to @player
    else
      render "edit"
    end
  end

  def destroy
    #how to consider admin rights for deletion
  end
 
    private

      def player_params
      	params.require(:player).permit(:email, :username, :password, :password_confirmation, :handicap_index, :gender)
      end

      def signed_in_player
          unless signed_in?
          store_location
          redirect_to signin_url, notice: "Please sign in."
          end    
      end

      def correct_player
        @player = Player.find(params[:id])
        redirect_to(root_url) unless current_user?(@player)
      end
end
