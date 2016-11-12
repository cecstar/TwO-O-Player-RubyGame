require_relative 'player'
require_relative 'question'

class Game

  def start
    create_players
    play_rounds
    print_scores
  end

  def create_players
    @players = [
      Player.new,
      Player.new
    ]
  end

  def play_rounds
    current_player = 0
    until game_over?
      correct = ask_question
      unless correct
        @players[current_player].lose_life
        print_scores
        puts "----- NEW TURN  -----"
      end
      current_player = current_player == 0 ? 1 : 0
    end
  end

  def ask_question
  question = Question.new
  puts "What does #{question} equal?"
  answer = gets.chomp.to_i
  question.correct?(answer)
  end

  def game_over?
    @players.any? { |p| p.lives <= 0 }
  end

  def print_scores
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
  end

end