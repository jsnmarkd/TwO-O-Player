class Question
  attr_reader :answer
  attr_reader :num1
  attr_reader :num2
  attr_accessor :user_answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = num1 + num2
  end

  def set_question
    puts "What does #{num1} plus #{num2} equal?"
    @user_answer = gets.chomp.to_i
  end
  
end