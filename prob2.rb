# Define the points for each room
ROOM_POINTS = [5, 10, 15]

# Initialize the player's total score
total_score = 0

# Welcome message
puts "Welcome to the Adventure Game!"
puts "You have #{total_score} points."

# Main game loop
loop do
  # Prompt the player to choose a room or exit
  print "Choose a room (1-3) to enter or 'exit' to end the game: "
  choice = gets.chomp.downcase

  # Check if the player wants to exit
  if choice == 'exit'
    puts "Game over! You collected a total of #{total_score} points."
    break
  end

  # Convert the choice to an integer and validate
  room_number = choice.to_i
  if room_number < 1 || room_number > 3
    puts "Invalid choice. Please choose a room number between 1 and 3."
    next
  end

  # Enter the chosen room and update the total score
  room_points = ROOM_POINTS[room_number - 1]
  total_score += room_points
  puts "You entered Room #{room_number} and earned #{room_points} points."
end
