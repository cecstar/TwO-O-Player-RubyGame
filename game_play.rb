require_relative 'player'
require_relative 'question'

class GamePlay
  attr_reader :q1, :question

    def initialize
      @question = Question.new
      @q1 = "What is #{@question.num1} + #{@question.num2}"

    end
end
game = GamePlay.new
    puts game.q1 #accessing