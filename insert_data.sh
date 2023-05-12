#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; 
do
  if [[ $YEAR != "year" ]]; 
  then
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    if [[ -z $OPPONENT_ID ]]; 
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      echo "Inserted into teams, $OPPONENT"
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi

    if [[ -z $WINNER_ID ]]; 
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      echo "Inserted into teams, $WINNER"
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi

      echo $($PSQL "INSERT INTO games(year, round, winner_goals, winner_id, opponent_goals, opponent_id) VALUES($YEAR, '$ROUND', $WINNER_GOALS, $WINNER_ID, $OPPONENT_GOALS, $OPPONENT_ID)")
      echo "Inserted, $YEAR $ROUND $WINNER_GOALS $WINNER_ID $OPPONENT_GOALS $OPPONENT_ID"
  fi
done
