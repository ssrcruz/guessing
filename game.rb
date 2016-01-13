srand # pseudorandom produce sequences that differ each time a new random number is generated.
random_number = rand(1..100)
guesses = 5


  while guesses > 0
      puts "Guess a number between 1 and 100. Guesses left: #{guesses}. Guess wisely."
      guess = gets.chomp.to_i
      guesses -= 1

    if guess == random_number
      puts "You guessed it right! It's #{random_number}, you win."
    elsif guess > random_number
      puts "Your guess is too high!"
    elsif guess < random_number
      puts "Your guess is too low!"
    elsif guess
      puts "You already guessed this number..."
    end
  end

  if guesses == 0
    puts "You lose!"
  end
