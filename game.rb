require './player'
require './question'

class Game
  attr_accessor :player1
  attr_accessor :player2

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def new_game
    current_player = player1
    while player1.lives > 0 && player2.lives > 0
      puts "----- #{current_player.name}'s TURN -----"
      question = Question.new
      question.set_question
      if question.answer == question.user_answer
        puts 'YES! You are correct.'
      else
        puts 'Seriously? No!'
        current_player.wrong_answer
      end
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
      current_player = (current_player == player1) ? player2 : player1
      puts ' '
    end
    self.game_over
  end

  def game_over
    puts '----- 🏆 WINNER 🏆 -----'
    if player1.lives == 0
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
    else
      puts "#{player1.name} wins with a score of #{player1.lives}/3"
    end
    puts '----- GAME OVER -----'
    puts 'Good Bye'
  end
end