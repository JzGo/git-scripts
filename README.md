# Git Helpers: A WIP

I often have to set up extra remotes for our repos at work so I'm creating some helper scripts to save us some time. Still working on implementation and next steps include error and help messages.

## Usage

Each file contains a script that performs a specific task. It helps to store aliases for these commands in your bash profile:

### ~/.bash_profile

```bash
alias git-new-remote='bash path-to-folder/git-scripts/git-new-remote.sh'
```

Once a command is registered with an alias, you can run it like so in the terminal:

```bash
git-new-remote arg1 arg2
```

#### git-new-remote

The git-new-remote command is used to set up a new remote for your repo. This is useful when the source of a forked repository is frequently updated and you need to set up new remotes to point to the forked repos. The command requires two arguments:

```bash
git-new-remote remote-alias repo-url
```

The first argument is an alias for the repo and the second is for the url for the repo on github. 
The script will have set up the remote-alias to point to the url of the forked repo making this possible:

```bash
git push remote-alias
```
