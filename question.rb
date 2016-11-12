class Question

  OPERATORS = [:+, :-, :*]

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = OPERATORS.sample
    # var o = { a: function () {console.log('ehhhhh!')}, b: function () { console.log('beeeee!')} }
    # var whichOne = Math.random() > 0.5 ? 'a' : 'b'
    # o[whichOne]()
    @answer = @num1.send(@operator, @num2)
  end

  def to_s
    "#{@num1} #{@operator} #{@num2}"
  end

  def correct?(answer)
    @answer == answer
  end
end
