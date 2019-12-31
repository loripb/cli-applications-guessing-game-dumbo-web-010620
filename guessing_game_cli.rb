require 'pry'

def get_number
  rand(1..6)
end

def get_guess
  gets.chomp
end

def welcome
  puts "welcome to the guessing game!"
  puts "I'm thinking of a number from 1-6."
  puts "think you can guess which one?"
end

def prompt_user
  puts "Enter a number 1-6."
end

def win(number)
  puts "You guessed the correct number!"
end

def lose(number)
  puts "Sorry! The computer guessed #{number}."
end

def end_game
  puts "Goodbye!"
end

def compare_guess(number)
  guess = get_guess.to_i

  if guess == number
    win(number)
  elsif guess.between?(1,6)
    lose(number)
  else
    invalid_input
    compare_guess(number)
  end
end

def invalid_input
  puts "You entered an invalid input"
end

def run_guessing_game
  welcome
  number = get_number
  prompt_user


  compare_guess(number)
  end_game
end
