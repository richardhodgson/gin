# Gin

A Git inspired client for Subversion.

## Why?

At work, we build new functionality in feature branches. With Subversion, this often means fiddling with repo URLs to create a branch or several commands in order to merge a branch back.

Outside of work many of us use `git`, so creating a similar command line DSL makes sense.

## Usage

Change into the root of your check out and call `gin` as you would `git`.

    gin <command>

For example, check out the trunk of `myproject` and list the branches:

    svn checkout http://repo.com/path/to/myproject/trunk myproject
    cd myproject
    gin branch

## Project structure

Our projects follow this directory convention:

    projectName/
        branches/
            some-branch/
            another-branch/
        trunk/

Projects are checked out at either `trunk` or a directory under `branches`.

## Documentation

See the [manual](https://github.com/richardhodgson/gin/blob/master/MANUAL.md).

## Why is it named gin?

Its only one letter different than `git` and I like gin.



