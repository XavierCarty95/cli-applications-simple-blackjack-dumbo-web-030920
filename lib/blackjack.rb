def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
 card =  rand(1...11)
 card
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  # code #prompt_user here
  yer = puts "Type 'h' to hit or 's' to stay"
  yer
end

def get_user_input
  # code #get_user_input here
  gets.chomp


end

def end_game(card_total)
  # code #end_game here
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
   deal_card
   deal_card
   total = deal_card + deal_card
  response = display_card_total(total)
  response
end

def hit?(total)
  # code hit? here
   prompt_user
   input = get_user_input
  if input == 'h'
    total +=  deal_card

 elsif input == 's'
     total
 else
    invalid_command
    hit?(total)

  end
  total
end

def invalid_command
  # code invalid_command here
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  if card_total < 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  else
  end_game(card_totals)
 end
end
