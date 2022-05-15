# Importing JSON an YAML files

CUE is capable of importing both JSON and YAML files, among others, and converts them to CUE files. 
There is a multitude of different settings available when importing, if you are futher interested try writing `cue import --help`{{execute}}

## Step 1: Importing JSON files

This is just as easy as it looks, simply write `cue import import\_example.json`{{execute}} and a CUE file will be created.

If you open the .cue file and compare it to the .json file you will see that there is no large difference between the files. This is due to CUE being a superset of JSON but with a bit more flexibility in the formatting, allowing for the removal of the outermost brackets and not having quotes around the field names(except for when special characters are used).

## Step 2: Importing YAML files

Importing YAML files is just as "_difficult_" as importing JSON files: `cue import import\_example.yml`{{execute}}

Notice however that CUE skipped the import this time, this happened due to the import_example.cue file already existing, and can be best avoided by using a good naming convention and not naming your files the same thing. Two other solutions would be to use the flag _-f_ to forcibly overwrite the file or to use the flag _-o \[string\]_ to manually name the file, try it now. `cue import import\_example.yml -o import\_example2.cue`{{execute}}


\
\
Now you know the basics on how to import files to CUE!
