#!/Users/delaneybrown/anaconda3/bin/python3

import os

os.environ["FAV_FOOD"] = "Pasta"    
os.environ["YEAR_AT_UVA"] = "Third"
os.environ["MAJOR"] = "Cognitive Science" 
os.environ["FAV_SHOW"] = "Gilmore Girls"


FAV_FOOD = input('What is your favorite food? ')
YEAR_AT_UVA = input('What year are you at UVA? ')
MAJOR = input('What is your major? ')
FAV_SHOW = input('What is your favorite show? ')


# fetching variable
FAV_FOOD_ENV = os.getenv("FAV_FOOD")
#printing variablle
print(FAV_FOOD_ENV)

# fetching variable
YEAR_AT_UVA_ENV = os.getenv("YEAR_AT_UVA")
#printing variable
print(YEAR_AT_UVA_ENV)

# fetching variable
MAJOR_ENV = os.getenv("MAJOR")
# printing variable
print(MAJOR_ENV)

# fetching variable
FAV_SHOW_ENV = os.getenv("FAV_SHOW")
# printing variable
print(FAV_SHOW_ENV)


