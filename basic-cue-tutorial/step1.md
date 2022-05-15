# Importing JSON an YAML files

CUE is capable of importing both JSON and YAML files, among others, and converts them to CUE files. 
There is a multitude of different settings available when importing, if you are futher interested try writing `cue import --help`{{execute}}

## Step 1: Importing the JSON file

This is just as easy as it looks, simply write `cue import import_example.json`{{execute}} and a CUE file will be created.

If you open the .cue file and compare it to the .json file you will see that there is no large difference between the files. This 


field names 


## Step 1: Download Go binaries
First we will download the go binaries, by running the following command in the terminal:

`wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz`{{execute}}

## Step 2: Extract Go binaries
Next, we will need to extract it to /usr/local, and remove any preexisting Go installation to prevent version conflicts:

`rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz`{{execute}}

## Step 3: Install CUE

And finally, to install CUE we will install it using our recently installed Go binaries:

`go install cuelang.org/go/cmd/cue@latest`{{execute}}

## Final steps

CUE should now be installed and ready to be used in the terminal. Try using cue in the bash shell for some information:

`cue`{{execute}}
