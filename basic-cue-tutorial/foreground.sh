#/bin/bash

echo "Preparing the environment. Wait for the file explorer to stop updating before you begin running commands!\n"

wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
go install cuelang.org/go/cmd/cue@latest

echo "The tutorial environment is now ready.\n"

# 'This is a bash shell script.\n\n'
# 'Any commands you put in here will be executed at runtime.\n\n'
# 'As such, this is a good place to install and configure anything you want to have ready for the learner before they get started.\n\n'
# 'The file is named foreground.sh because when it executes, the commands are echoed to the terminal.\n\n'
# 'To run a script in the background, so learners will not see it execute, specify it in the index.json as "background": "background.sh"\n\n'
