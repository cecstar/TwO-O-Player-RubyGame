class Question
  attr_reader :question, :num1, :num2

    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end

end
