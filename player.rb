class Player
  attr_reader :name
  attr_accessor :lives
  def intialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    lives -= 1
  end
end