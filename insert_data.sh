#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "Truncating the tables first"
$PSQL "TRUNCATE games, teams"
echo "Inserting infos to the tables"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
  #check if winning team is in team table using team_id
  echo "checking winning team in the teams database"
  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  #if not in team table insert team
  if [[ -z "$WINNER_ID" ]]
  then
    echo "Need to insert this to teams!"
    INSERT_WINNING_TEAM="$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")"
    if [[ $INSERT_WINNING_TEAM = 'INSERT 0 1' ]]
    then
      echo Team added to the teams database
    fi
    #getting team_id again if recently added
    WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
  fi
  echo Winning team is $WINNER with team id : $WINNER_ID
  #if opponent team is in team table using team_id
  echo "checking opponent team in the teams database"
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
  #if not in team table insert team in table
  if [[ -z "$OPPONENT_ID" ]]
  then
    echo "Need to insert this to teams!"
    INSERT_OPPONENT_TEAM="$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")"
    if [[ $INSERT_OPPONENT_TEAM = 'INSERT 0 1' ]]
    then
      echo Team added to the teams database
    fi
    #getting team_id again if recently added
    OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
  fi
  echo Opponent team is $OPPONENT with team id : $OPPONENT_ID
  #insert game info into the games table
  echo Inserting the game info to the games table
  INSERT_GAME="$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")"
  if [[ $INSERT_GAME = 'INSERT 0 1' ]]
  then
    echo "Game is inserted in the database"
  fi
  fi
done

