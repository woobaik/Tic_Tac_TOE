require_relative 'game'
require_relative 'player'


players = [
  Player.new("Haram",:X),
  Player.new("Joungwoo",:O),
]

game = Game.new(players)

puts "Welcome to Tic tac toe"
puts "player one's turn"
puts "Player one, pick a move"

game.player_turn(players[0])

#TODO : GET A MOVE FROM PLAYER 1
#TODO : MARK THE MOVE ON THE BOARD
#TODO : CHECK THE WINNER
