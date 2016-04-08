# fav_commands
A simple bash script that takes a string and reminds me of the command associated with it, but doesn't run the command, in the hopes that someday after typing that command 10000000000 times I'll finally remember it off the top of my head.

It's built based on how I like to remember things, which means my own internal language, so feel free to fork and customize to your own.

Usage is extremely simple, just make sure it's executable and run 

```
remind.sh "thing I want to be reminded of"
```

Or create an alias in your bash profile

```
alias remind="bash /home/vagrant/fav_commands/remind.sh"

```

so you can run

```
remind "thing I want to be reminded of"
```
