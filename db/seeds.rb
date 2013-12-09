# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# g = Group.create()

# g_card = GreenCard.create(adjective: 'Absurd', description: 'ridiculous, senseless, foolish')

# g_cards = GreenCard.create({adjective: 'Adorable' , description: 'lovable, cute'}, {adjective: 'Aged' , description: 'old, ancient, mature'}, {adjective: 'Bashful', description: 'shy, timid, modest'}, {adjective: 'Clever', description: 'intelligent, ingenious, witty'})

# reds = RedCard.create([{noun: 'A Spare Tire', description: 'The good news is: we have a spare tire...' }, {noun: 'Bee Stings', description: "Leave the bees alone- and they'll leave you alone"}, {noun:'Cookies' , description: 'Chocolate chip, oatmeal, sugar, or peanut butter'}, {noun: 'High Heels', description: 'No running.'}])


red_file = File.join(Rails.root, 'public', 'red_cards.txt')
open(red_file) do |nouns|
  nouns.read.each_line do |noun|
    noun, description = noun.chomp.split(":")
    RedCard.create!(:noun => noun, :description => description)
  end
end

green_file = File.join(Rails.root, "public", "green_cards.txt")
open(green_file) do |adjs|
  adjs.read.each_line do |adj|
    adj, description = adj.chomp.split(":")
    GreenCard.create!(:adjective => adj, :description => description)
  end
end
