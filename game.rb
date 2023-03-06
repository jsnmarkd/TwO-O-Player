require './player'
require './question'

class Game
  attr_accessor :player1
  attr_accessor :player2
  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def new_turn
    # loop
  end

  def game_over
    puts '----- GAME OVER -----'
  end
end