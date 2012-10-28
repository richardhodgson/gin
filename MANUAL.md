Gin - a Git inspired client for Subversion
==========================================

## Usage

    usage: gin <command> [<args>]

## Commands

### Branch

Create a branch.

    gin branch some-feature

List all branches.

    gin branch

### Checkout

Checkout a branch.

    gin checkout some-feature

Create a branch and switch to it.

    gin checkout -b some-feature

### Merge

Merge a branch into the current branch.

    gin merge some-feature

### Log

Show the commit log for the current branch.

    gin log

Show the commit log for another branch.

    gin log some-feature

### Diff

Show uncommitted changes.

    gin diff

Show changes between branches.

    gin diff some-feature..trunk

### Help

Get a list of supported commands.

    gin

## Further information

Further information can be found at https://github.com/richardhodgson/gin.
