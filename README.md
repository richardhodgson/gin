# Gin

A Git inspired client for Subversion.

## Why?

At work, we build new functionality in feature branches. With Subversion, this often means fiddling with repo URLs to create a branch or several commands in order to merge a branch back.

Outside of work many of us use `git`, so creating a similar command line DSL makes sense.

## Install

Run the installer.

    curl https://raw.github.com/richardhodgson/gin/master/install | bash

The `gin` executable should now be in your `$PATH`.

## Usage

Change into the root of your check out and call `gin` as you would `git`.

    gin <command>

For example, branch from the trunk of `myproject` and switch to the new branch:

    svn checkout http://repo.com/path/to/myproject/trunk myproject
    cd myproject
    gin branch some-feature
    gin checkout some-feature

Running `svn info` will now show the checkout has switched to `http://repo.com/path/to/myproject/branches/some-feature`.

See the [manual](https://github.com/richardhodgson/gin/blob/master/MANUAL.md#gin---a-git-inspired-client-for-subversion) for more commands.

## Project structure

Projects follow a directory convention:

    projectName/
        branches/
            some-feature/
            another-feature/
        trunk/

Projects are checked out at either `trunk` or a directory under `branches`.

## Why don't you just use Git?

It's complicated.

## Why don't you just use Gitsvn?

That's more complicated. Whilst that means we can use Git locally, we'd still have to push back to the Subversion repo eventually. I'd rather just use Subversion, however I do like the Git command line API.

## Why is it named gin?

Its only one letter different than `git` and I like gin.



