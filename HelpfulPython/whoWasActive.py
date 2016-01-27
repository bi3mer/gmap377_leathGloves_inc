import json
from os import listdir
from os.path import isfile, join

'''
HOW TO USE:
Export from slack the text files
	goto: https://infiniteskies.slack.com/services/export

Unzip the folder and place it into this folder

Make sure it is titled as 'daily_check-in'
	if not either update the folder name or the variable titled DIRECTORY

run in the terminal the following command:

	python whoWasActive.py

and it'll print out all the info for you with how many times

Colan Biemer
1/27/16
'''

## Directory to be explored
DIRECTORY = 'daily_check-in/'

def getJSON(file):
	## Open file
	with open(DIRECTORY + file, 'r') as f:
		## return file in json format
		return json.load(f)

## Set variables to check each user, this is a hardcoded piece of crap
users = {
	'U0J235A57': {
		'name': 'Cody',
		'count': 0,
		'modified': False
	},
	'U0J4ESXME': {
		'name': 'Nick, aka "who?"',
		'count': 0,
		'modified': False
	},
	'U0J3LL9PB': {
		'name': 'Design Lead, Michael',
		'count': 0,
		'modified': False
	},
	'U0J1X7VT5': {
		'name': 'Laura',
		'count': 0,
		'modified': False
	},
	'U0J6T6ARG': {
		'name': 'Ethan',
		'count': 0,
		'modified': False
	},
	'U0J242FDE': {
		'name': 'The Wild Card / Shadow Programming Lead, AKA Colan Biemer',
		'count': 0,
		'modified': False
	},
	'U0J1XCZAP': {
		'name': 'The Segway Assassin, AKA Bryan Fawber',
		'count': 0,
		'modified': False
	},
	'U0J2U3PJT': {
		'name': 'Bern Dawg',
		'count': 0,
		'modified': False
	},
	'U0J1XP6NA': {
		'name': 'Alex 2',
		'count': 0,
		'modified': False
	},
	'U0J1V4ABW': {
		'name': 'Alex B',
		'count': 0,
		'modified': False
	},
	'U0J3RMG22': {
		'name': 'Vincent',
		'count': 0,
		'modified': False
	},
	'U0J1YGMUK': {
		'name': 'Will',
		'count': 0,
		'modified': False
	}
}
## Get file names
jsonFiles = [f for f in listdir(DIRECTORY) if isfile(join(DIRECTORY, f))]

## loop through files
for file in jsonFiles:
	## Go through file
	jsonFile = getJSON(file)

	## loop through each entry in file
	for entry in jsonFile:
		## Check if it has been modified
		if users[entry['user']]['modified'] == False:
			users[entry['user']]['count'] += 1
			users[entry['user']]['modified'] = True

	# Reset modified
	for user in users:
		users[user]['modified'] = False

## get number of files
length = str(len(jsonFiles))

## Print out results
for user in users:
	print users[user]['name'] + ' was here ' + str(users[user]['count']) + '/' + length + ' times'