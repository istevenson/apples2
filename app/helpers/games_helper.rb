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

  def get_random_red
    random_id = Random.rand(1..1826)
    @red_card = RedCard.find(random_id)
  end

  def get_random_green
    random_id = Random.rand(1..614)
    @green_card = GreenCard.find(random_id)
  end

end
