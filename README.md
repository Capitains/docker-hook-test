HookTest for Docker
===================

[![Docker Stars](https://img.shields.io/docker/stars/capitains/hooktest.svg?maxAge=86400)](https://hub.docker.com/r/capitains/hooktest/tags/) 
[![Docker Pulls](https://img.shields.io/docker/pulls/capitains/hooktest.svg?maxAge=86400)](https://hub.docker.com/r/capitains/hooktest/tags/)

Docker Image to run Hook tests on a repository

## Set up

When you create a container using this image, you must set the data volume `/sources` to point to one of your local host directory. In this directory, you need to put the CapiTainS guideline repositories you want to use. The `path/to/repository-root-folder` should be a path where each folder represent a CapiTainS repository, such as PerseusDL/canonical-latinLit or OpenGreekAndLatin/csel-dev.

- **Command Line** : `docker run -i --name hooktest -v /path/to/repository-root-folder:/sources capitains/hooktest:latest` 

## Commands

In the interactive panel run the following command depending on the scheme

- `./tei.sh {foldername}` where `{foldername}` represents the repository folder you have put in your local host directory set for sources. eg. `./tei.sh canonical-latinLit` if `canonical-latinLit` is a repository at `/home/capitains/Documents/repositories/` and that this folder is set for `/sources`.
- `./epidoc.sh {foldername}` where `{foldername}` represents the repository folder you have put in your local host directory set for sources. eg. `./tei.sh canonical-latinLit` if `canonical-latinLit` is a repository at `/home/capitains/Documents/repositories/` and that this folder is set for `/sources`.

## Output

The command creates a `result.json` and a `results.html` page that provides file-by-file test results and put them in the tested directory.