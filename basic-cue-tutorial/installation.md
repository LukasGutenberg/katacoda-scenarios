# Installation of Go and CUE

There is more than one way to install CUE, in this tutorial we will install it for our Ubuntu environment from source by making use of Go binaries.

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