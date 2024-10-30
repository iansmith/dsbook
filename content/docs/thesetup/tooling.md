+++
weight = 40
+++
## A brief explanation of our tooling

* Short descriptions of the _function_ of the tools not about the details
of the commands, input, etc.

### golang

### templ
* Again, focus on the simplicity, particularly of mixing in go code.
** Maybe concede that sending server values to the javascript side is awkward

### nats event bus
* I got the embedded version of this worikng.  Sweet.

### tailwind?
* I was planning to some minimal styling of the app using tailwind
* Part of this was so we can solicit PRs from the community and maybe
somebody will do some nice design for us.

### git?
Is this _like duh_?

### json?
Is this _like duh_?

### http
Is this _like duh_?

### ngrok
In a later lesson we'll add some multi-user stuff and this seems like the easiest
way that we can control/explain. DNS seems way more complex.

### npm/npx/node
* seems at least somewhat required if you use tailwind 
* it brings up some questions that we probably want to ignore about how to h
    andle node_modules


### task
* We should supply a Taskfile that is tailored for each lesson. Over the course
of a book it would give them several different examples.

## Adding the tools to your enable script.
* Explain the bin directory business with $DSBOOK/bin/foo->$DSBOOK/bin/foo1.2.3->actual binary
