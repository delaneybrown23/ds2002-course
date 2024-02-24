#!/bin/bash


clear

echo "Let's build a mad-lib!"
read -p "1. Please give me an adjective: " ADJ1
read -p "2. Please give me a noun: " NOUN1
read -p "3. Please give me a verb (past tense): " VERB1
read -p "4. Please give me another noun: " NOUN2
read -p "5. Please give me another verb (past tense): " VERB2
read -p "6. Please give me another adjective: " ADJ2
read -p "7. Please give me an adverb: " ADV1
read -p "8. Please give me another adverb: " ADV2
read -p "9. Please give me a singer's name: " NAME1
read -p "10. Please give me another verb (past tense): " VERB3
read -p "11. Please give me another verb (past tense): " VERB4
read -p "12. Please give me another noun: " NOUN3
read -p "13. Please give me the name of a U.S. state: " PLACE1
read -p "14. Please give me the name of another U.S. state: " PLACE2
read -p "15. Please give me another adjective (capitalized): " ADJ3


echo "Once upon a time, there was a $NOUN1 who lived in a $ADJ1 house in $PLACE1."
echo "The $NOUN1 liked living in the house in $PLACE1 but wanted to explore, so the $NOUN1 $ADV1 left the house and $VERB1 away on a $NOUN2."
echo "On the $NOUN2, the $NOUN1 met a $ADJ2 $NOUN3 who $ADV2 $VERB2. The $NOUN1 and the $NOUN3 decided to get off the $NOUN2 and explore $PLACE2."
echo "In $PLACE2, the $NOUN1 and $NOUN3 $VERB3 and had so much fun. Then, to their surprise, $NAME1 appeared and asked them to join the $ADJ3 World Tour." 
echo "The $NOUN1 and $NOUN3 ecstatically agreed and $VERB4 away with $NAME1. The end!"

