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

  def get_reds
    if @game
      red_card_review = @game.red_cards

      card_arr = []
      red_card_review.each do |card|
        if red_card
          card_arr << card.attributes
        end
      end
      ret_arr.to_json.html_safe
    end
  end

  def get_random_red
    random_id = Random.rand(1..1826)
    r = RedCard.find(random_id)
    # r.game_id = @game.id
  end
end
