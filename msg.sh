#!/bin/bash

# buddy must be in your contacts, case sensitive
# buddy must have iMessage 

osascript -e 'tell application "Messages" to send "'"$1"'" to buddy "'"$2"'"'
if [ $? -eq 0 ]; then
	echo "Message sent!"
else 
	echo "Message failed."
fi
