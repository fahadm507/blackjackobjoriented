require_relative 'blackjack'

a_deck = Deck.new
player_one = []
player_one << a_deck.deal
player_one << a_deck.deal

puts "Welcome to blackjack!"
puts "Player was dealt #{player_one[0].to_s}"
puts "Player was dealt #{player_one[1].to_s}"
puts "Player score:#{player_one[0].score + player_one[1].score}"
