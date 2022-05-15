# Exporting as JSON or YAML

One of the biggest benefits of using CUE is that it is cleaner and more readable than JSON and YAML, but also that it allows for exporting as both formats.

## Exporting a CUE file as JSON

By default, running the cue export command will export the CUE file in a JSON format. Try running to following command to test it out:

`cue export example.cue`{{execute}}

## Exporting a CUE file as YAML

If you would like to export your CUE file as YAML instead, you need to specify it like in the following example:

`cue export example.cue --out=yaml`{{execute}}

## More information

For more information about the different ways CUE can export, you can run the following commands:

`cue export --help`{{execute}}

and

`cue filetypes`{{execute}}