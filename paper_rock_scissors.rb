
CHOICE = {'P' => 'paper', 'R' => 'rock', 'S' => "scissors"}

loop do

puts "Play Paper Rock Scissors!"

puts "Choose one: (P/R/S)"
player_choice = gets.chomp.upcase!

	until player_choice == 'P' || player_choice == 'R' || player_choice == 'S' do
		puts 'That is not a valid choice. Please choose again'	
		player_choice = gets.chomp.upcase!
	end

puts "You chose " + CHOICE.values_at(player_choice).join + "."

comp_choice = CHOICE.keys.sample

puts "The computer chose " + CHOICE.values_at(comp_choice).join + "."

if player_choice == comp_choice
	puts "You chose the same thing! It's a tie."
elsif player_choice == 'P' && comp_choice == 'R' || player_choice == 'R' && comp_choice == 'S' || player_choice == 'S' && comp_choice == 'P'
	puts "You win!"
else
	puts "You lose!"
end

puts "Play again? (Y/N)"
user_choice = gets.chomp.upcase 
	if user_choice == 'Y'
		puts "Great!"
	else
		puts "See you later!"
		break
	end
end

		
