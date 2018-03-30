require_relative 'game'
require_relative 'player'

p players = [
  Player.new('haram',:X),
  Player.new('JB',:O)
]

game = Game.new(players)
p game

puts "Welcome to Tic Tac Toe!"
puts "It's Player1's turn!"
puts "Player1, Please make a move"
print ">"
p game.play_turn(players[0])
p game.print_grid

# TODO: get a move from player (in Players class in order to expand it to AI BOT )

# TODO: Mark the move into Board (Game class)

#TODO: See if a player won
