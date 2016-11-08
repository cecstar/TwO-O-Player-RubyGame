require 'pry'
require_relative 'player'
require_relative 'question'
require_relative 'game_play'


p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
game = GamePlay.new(p1, p2)
