## Introduction

Welcome to this tutorial for CUE, the configuration language from Google that aims to make data formats such as JSON and YAML easier to work with. JSON is easy for machines to process, but it is a hassle for humans to deal with. YAML has the opposite problem as it is made to be human-friendly, and CUE is an alternative that aims to combine the strengths of both and mitigate their weaknesses. CUE is considered a superset of JSON as the former can read and represent all of the latter, while the other way around is not true. Although CUE is not a superset of YAML, it can validate and import YAML files.

CUE is able to export both JSON and YAML files. Using CUE is helpful for managing configuration files because it is designed to be cleaner and more readable than JSON and YAML while having compatibility with both, and both of those formats are often used in Infrastructure as Code (IaC) contexts, which is a best practice in DevOps. Kubernetes, for example, uses JSON or YAML to represent objects, and using CUE would facilitiate management of those configuration files.

## Intended Learning Outcomes

This tutorial is intended to teach the basics of the CUE configuration language that will hopefully open up people to using and learning more about it and its strengths.

You will learn the following in this tutorial:
1. Importing a JSON or YAML file into a CUE file that is ready for editing.
2. Using basic functions in a CUE file to implement data restrictions and limiting boilerplate.
3. Exporting a CUE file as a JSON or a YAML file.

## Recommended Prerequisite Skills

This tutorial is aimed at people with some experience with programming and it is recommended to be somewhat familiar with the following:
- Bash
- JSON
- YAML

## About this tutorial

The tutorial will install CUE in the background when you start it, but it can take some time, so wait with any commands until the file explorer stops updating.
