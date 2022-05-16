# Learning the basic tools of CUE

Here you will learn the foundations of writing a CUE file and how we can restrict our data. Begin by opening the empty file _constrained\_data.cue_ in the examples folder and we can get started.


## Create your recipe

Schemas are written as Definitions in CUE. A definition has an identifier which starts with `#` or `_#`. These characters tell CUE that it is used for validation and should not be output as data.
<details>
  <summary>Why would they have two ways of doing it, you may wonder?</summary>
  
  It is because normally, having _ in the beginning of a field name prevents it from being output, and the case where you combine them is taken into consideration.
</details>

A definition can be thought of as a "closed" blueprint or recipe for structs, which is essentially a JSON object consisting of allowed fields.

Try creating your own definition in _constrained\_data.cue_

```
#Human: {
    name:       string
    height:     int
    haircolor:  string
    friends:    [...string]
    actions:      {...} 
}
```

## Bake your cookies
We then create a struct, which is similar to a JSON object, and use a conjunction '&' to bind our data to our definition. Note that we can have a comma after the final element in the list, this is simply ignored by CUE.

```
human: #Human & {
    name:       "john"
    height:     185
    haircolor:  "brown"
    friends:    ["Mark", "Sven", "Jenny",]
    actions:    {
        attack: true
        defend: false
    }
}
```
We can now run this file with CUE and get a JSON as an output, try it now:

`cue export examples/constrained_data.cue`{{execute}}

Experiment with what happens if you change a value to the wrong type, did you get an error message?

<details>
  <summary>What is ...?</summary>
  
  The reason why we put "closed" in quotes for explaining what a definition is, is that it is not always closed. In the example above, you may wonder what the `...` means. When you put `...` you are telling CUE that you want the struct to be able to accept more inputs, for example if we try to add another field inside _human_ we will get an error due to _#Human_ not having `...` in its final row.

</details>

## Place restrictions on your ingredients

The main feature of CUE is it's ability to unify Schemas and data, having no distinction between types and values. 
This makes it so that we can restrict both how our configuration file is structured and what values are allowed. 

We do this by adding further definitions and chaining them together, add this between your struct and definition:

```
#Constraints: #Human & {
    name:       =~"[a-z]+"
    height:     >0 | 170
    friends:    list.MaxItems(5)
}
```
We also need to change our struct and replace _#Human_ with _#Constraints_.

CUE supports packaging and imports, this is not something that we will go into depth with here and if you want to know more you can look at the CUE documentation. We do however need to import the _list_ package to implement these constraints.
```
import "list"
```

These constraints can be quite versatile, allowing for example regular expressions, default values with `|`, and mathematical expressions. Play around and see what you can do!
`cue export examples/constrained_data.cue`{{execute}}

## Summary

As this part of the tutorial is pretty long we will make a short summary of what we have learned:

- In CUE you can create definitions as recipes that your structs will have to adhere to.
- When creating your struct, which is similar to a JSON object, you can specify for it to adhere to your definition.
- You can also create constraints or restrictions on which data is allowed in your structs.

