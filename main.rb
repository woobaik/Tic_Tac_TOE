require_relative 'game'
require_relative 'player'

p players = [
  Player.new('haram',:X),
  Player.new('JB',:O)
]

game = Game.new(players)
 p game
