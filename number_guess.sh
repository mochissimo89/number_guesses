#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Enter your username:
read USERNAME

USER_CHECK=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")

if [[ -z $USER_CHECK ]]

then
  # it's a new user
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  # add them to users table
  ADD_USER=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
  # find their assigned user_id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

else
  # it's a returning user
  # find their user_id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  
  # find games played
  GAMES_PLAYED=$($PSQL "SELECT COUNT(guesses) FROM games WHERE user_id=$USER_ID")

  # find best game
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")

  # print the returning user welcome message
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

fi

# now play the game

# set the answer
ANSWER=$(($RANDOM%1000+1))

# intro the game
echo Guess the secret number between 1 and 1000:
GUESS=0
COUNTER=0

# do this until guess = answer
while [[ $GUESS != $ANSWER ]]
do

  read GUESS
  COUNTER=$[COUNTER + 1]
  
  # integer check
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    # tell them it's not an integer
    echo That is not an integer, guess again:
  
  else
  # it's an integer
    if [[ $GUESS > $ANSWER ]]
    then
      echo "It's lower than that, guess again:"
    elif [[ $GUESS < $ANSWER ]]
    then 
      echo "It's higher than that, guess again:"
    else
      echo "You guessed it in $COUNTER tries. The secret number was $ANSWER. Nice job!"
    fi

  fi

done

# insert game result
GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES ($USER_ID, $COUNTER)")
