class PlayersController < ApplicationController

  def show
    @player = current_player
    new_game = false
    if @player
      @game = Game.create
      game_id = @game.id
      @player[:game_id] = game_id
    end



    if @player.save
      # link_to player_
      # redirect_to :controller => 'games', :action => 'chooser'
      # render :json => {:new_game_id => @game.secret_id}

    end
  end



  # def join
  #   @player = Player.new(players_params)
  #   new_game = true
  #   if @player.plays.has_key?(:game_id)
  #     @game = Game.where("secret_id = '#{secret_id}").first
  # end

  private
  def players_params
    params.permit(:name, :game_id, :id, :secret_id)
  end


end
