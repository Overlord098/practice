#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "truncating the tables"
TRN=$($PSQL "truncate table teams ,games")
if [[ $TRN == "TRUNCATE TABLE" ]]
then 
echo "TRUNCATED"
fi

echo "inserting data"
cat games.csv | while IFS=","  read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $WINNER != winner ]]
then

$($PSQL "INSERT INTO TEAMS(name) values('$WINNER')")
$($PSQL "INSERT INTO TEAMS(name) values('$OPPONENT')")

TEAM=$($PSQL "select name from teams")
echo $TEAM
fi

if [[ $WINNER != winner ]]
then
WINNER_ID=$($PSQL "select team_id from teams where name ilike '%$WINNER%'")
fi

if [[ $OPPONENT != opponent ]]
then
OPPONENT_ID=$($PSQL "select team_id from teams where name ilike '%$OPPONENT%'")
fi


if [[ $YEAR != year ]]
then
GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)")
fi


done