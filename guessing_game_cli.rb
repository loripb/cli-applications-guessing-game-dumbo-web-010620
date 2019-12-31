require 'pry'

def get_number
  rand(6) + 1
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

def win
  p "/You guessed the correct number!/"
end

def lose(number)
  p "/Sorry! The computer guessed #{number}./"
end

def end_game
  p "Goodbye!"
end

def compare_guess(guess, number)
  if guess == number
    win
  elsif guess == 'exit'
    end_game
  else
    lose(number)
  end
end

def run_guessing_game
  welcome
  number = get_number
  guess = get_guess.to_i
  prompt_user

  compare_guess(guess, number)
  end_game
end
