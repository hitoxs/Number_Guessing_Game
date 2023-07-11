#!/bin/bash

# Prompt the user for a username
read -p "Enter your username: " username

# Connect to the database and retrieve user information
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
user_info=$($PSQL "SELECT games_played, best_game FROM users WHERE username = '$username'")

# Check if the user exists in the database
if [ -z "$user_info" ]; then
  # User does not exist, insert new record
  $PSQL "INSERT INTO users (username, games_played, best_game) VALUES ('$username', 0, NULL)"
  echo "Welcome, $username! It looks like this is your first time here."
else
  # User exists, retrieve game statistics
  IFS='|' read -r games_played best_game <<< "$user_info"
  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

# Generate a random number between 1 and 1000
secret_number=$((1 + RANDOM % 1000))

# Initialize variables
number_of_guesses=0
guess=""

# Function to validate if the input is an integer
is_integer() {
  [[ "$1" =~ ^[0-9]+$ ]]
}

# Game loop
while true; do
  # Prompt the user to guess the secret number
  read -p "Guess the secret number between 1 and 1000: " guess

  # Check if the input is an integer
  if ! is_integer "$guess"; then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Increment the number of guesses
  ((number_of_guesses++))

  # Compare the guess with the secret number
  if ((guess < secret_number)); then
    echo "It's higher than that, guess again:"
  elif ((guess > secret_number)); then
    echo "It's lower than that, guess again:"
  else
    # Correct guess
    echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
    
    # Update user statistics if it's their best game
    if [ -z "$best_game" ] || [ "$number_of_guesses" -lt "$best_game" ]; then
      $PSQL "UPDATE users SET best_game = $number_of_guesses WHERE username = '$username'"
    fi

    break
  fi
done
