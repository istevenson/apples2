module GamesHelper
  def get_game_players_info
    if @game
      game_players_info = @game.players

      ret_arr = []
      game_players_info.each do |player|
        if player
          ret_arr << player.attributes
        end
      end
      ret_arr.to_json.html_safe
    else
      return [].to_json.html_safe
    end
  end
end
