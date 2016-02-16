#How to use .gitignore

-To add a specific file to gitignore we shall use a `/` after the file name.

## Local .gitignore

This file will be used only for the current project. This file must be included into the repository so that other who clone the repository can have acces to it.

General `.gitignore` files: [gitignore](https://github.com/github/gitignore)

If you already have some files checked in and you want to ignore it, Git *will not* ignore the file if you add a rule later. In those cases you have to run the following command in your terminal:

```bash
$ git rm --cached
```


## Global .gitignore

1. Create a .gitignore file file at `~/.gitignore_global`
2. Open terminel
3. Type:

```bash
$ git config --global core.excludesfile ~/.gitignore_global
```


[Source](https://help.github.com/articles/ignoring-files/)
