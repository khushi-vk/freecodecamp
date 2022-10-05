
#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Truncate tables

TRUNCATE=$($PSQL "TRUNCATE TABLE games, teams RESTART IDENTITY")

# FILL TEAMS TABLE

# Iterate games.csv file, variables winner and opponent
cat games.csv | while IFS="," read Y R WINNER OPPONENT win_goals op_goals
do
if [[ $WINNER != winner && $OPPONENT != opponent ]]
then
  # if winner isnt in table, add winner
  WINNER_TEST=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
  if [[ -z $WINNER_TEST ]]
  then
    ADD_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  fi
  # if opponent isnt in table, add opponent
  OPPONENT_TEST=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
  if [[ -z $OPPONENT_TEST ]]
  then
    ADD_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
  fi
fi
done

# FILL GAMES TABLE

# Iterate games.csv file, variables winner and opponent
cat games.csv | while IFS="," read YEAR ROUND WIN OPP WIN_GOALS OPP_GOALS
do
if [[ $YEAR != year ]]
then
  # get winner id
  WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
  # get opponent id
  OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")
  # add game
  ADD_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_ID, $OPP_ID, $WIN_GOALS, $OPP_GOALS)")
fi
done
