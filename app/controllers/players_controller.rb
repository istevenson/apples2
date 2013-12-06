class PlayersController < ApplicationController

  def create
    @player = Player.new(players_params)
    new_game = false
    if !@player.plays.has_key?(:game_id)
      @game = Game.create
      game_id = @game_id
      new_game = true
    else
      game_id = params[:game_id]
    end

    @player[:game_id] = game_id
    @player.save

    if new_game
      render :json => {:new_game_id => @game.secret_id}
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
    params.permit(:name, :game_id, :id)
  end
end
