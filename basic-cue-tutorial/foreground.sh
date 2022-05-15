#/bin/bash

echo "Downloading golang"
wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz

echo "Extracting golang"
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz

echo "Installing cuelang with go"
go install cuelang.org/go/cmd/cue@latest

printf 'This is a bash shell script.\n\n'
printf 'Any commands you put in here will be executed at runtime.\n\n'
printf 'As such, this is a good place to install and configure anything you want to have ready for the learner before they get started.\n\n'
printf 'The file is named foreground.sh because when it executes, the commands are echoed to the terminal.\n\n'
printf 'To run a script in the background, so learners will not see it execute, specify it in the index.json as "background": "background.sh"\n\n'