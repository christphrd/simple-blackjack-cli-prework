def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  a = get_user_input
  if a == "h"
    x = deal_card
    card_total = card_total + x
  elsif a == "s"
    return card_total
  else
    invalid_command
    hit?(card_total)
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  a = initial_round
  until a > 21
    a = hit?(a)
    display_card_total(a)
  end
  end_game(a)
end
