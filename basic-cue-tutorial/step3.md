# Exporting with CUE

One of the biggest benefits of using CUE is that it is cleaner and more readable than JSON and YAML. It does mean, however, that CUE files are not readable configuration files as is, first they need to be exported.

## Exporting a CUE file as JSON

By default, running the cue export command will export the CUE file into JSON format and print it in the terminal. Try running to following command to test it out:

`cue export examples/constrained_data.cue`{{execute}}

If you want to save the output to a new file it is possible either to just pipe it, or you can use the flag _-o \[string\]_ to make cue do it for you:

`cue export examples/constrained_data.cue -o constrained_data.json`{{execute}}

## Exporting a CUE file as YAML

If you would like to export your CUE file as YAML instead, you need to specify it like in the following example:

`cue export examples/constrained_data.cue --out=yaml`{{execute}}

## More information

For more information about the different ways CUE can export, you can run the following commands:

`cue export --help`{{execute}}

and

`cue filetypes`{{execute}}