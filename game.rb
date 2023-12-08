CHOICES = ['Stone', 'Paper', 'Scissors']

def main
  user_choice = ARGV[0]
  computer_choice = CHOICES.sample

  unless CHOICES.include?(user_choice)
    puts 'Invalid choice'
    return
  end

  puts "Your choice: #{user_choice}"
  puts "Computer's choice: #{computer_choice}"
  puts determine_winner(user_choice, computer_choice)
end

main if __FILE__ == $PROGRAM_NAME

def determine_winner(user_choice, computer_choice)
  return 'Draw' if user_choice == computer_choice

  case user_choice
  when 'Stone'
    computer_choice == 'Scissors' ? 'Victory' : 'Defeat'
  when 'Paper'
    computer_choice == 'Stone' ? 'Victory' : 'Defeat'
  when 'Scissors'
    computer_choice == 'Paper' ? 'Victory' : 'Defeat'
  else
    'Invalid choice'
  end
end
