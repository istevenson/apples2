module ApplicationHelper
  def get_all_green_cards
    ret_arr = []
    green_cards.each do |green_card|
      ret_arr << [green_card.adjective, green_card.description]
    end
    ret_arr.to_json.html_safe
  end

  def get_all_red_cards
    ret_arr = []
    red_cards.each do |red_card|
      ret_arr << [red_card.noun, red_card.description]
    end
    ret_arr.to_json.html_safe
  end
end
