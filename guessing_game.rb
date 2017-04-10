class Game
  attr_reader :answer, :tries

  def play
    reset
    puts "Welcome to the guessing game!!"
    loop do
      print "Guess a number between 1 and 100:"
      guess = gets
      guess = guess.chomp
      break if guess == ""
      check_guess(guess.to_i)
    end
    puts "Thank you for playing!"
  end

  def check_guess(guess)
    if guess < answer
      puts "too low..."
    elsif guess > answer
      puts "too high..."
    else
      puts
      puts "*******************"
      puts "You got it! It took #{ tries } tries."
      puts "*******************"
      puts
      reset
    end
    @tries = @tries + 1
    # could also be written this way:
    # @tries += 1
  end

  def reset
    @tries  = 1
    @answer = rand(1..100)
  end
end

game = Game.new
game.play
