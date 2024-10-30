+++
weight = 9
title = 'The Enable Script'
+++

# The Enable Script

{{% columns ratio="3:1" %}} {{ /* begin columns block */ }} 

An enable script is a quite a specific shell script.  It's purpose is to be
put into your current shell's environment with `source` and have that shell
be "ready" for development work.   If you are not familiar with building
shell scripts (or simply despise them for all the obvious reasons), this
script is going to be so simple that it can easily be your first.

<---> {{ /*  magic separator, between columns */ }} 
{{% sidebar %}}

One of the authors (iansmith) learned this technique in 1991 and it was noted
by his colleagues that this technique was "old" then.

{{% /sidebar %}}
{{% /columns %}}

{{ /* NEXT CHUNK  */ }} 

{{% columns ratio="3:1" %}} {{ /* begin columns block */ }}  

We are guessing that many readers are thinking, "I know how to use the shell,
I don't need this."  This technique rewards study.  Be sure you understand the
idea and the practice of the enable script before you decide to skip this bit.
We are going to use it throughout this book.  There are number of both common
and unusual problems that the enable script technique avoids.  

<---> {{ /* magic separator, between columns  */ }}
{{% sidebar %}}

Many of these problems seem to occur the night before a big demo.  At such times
you're under pressure and not as careful as you might otherwise be.

{{% /sidebar %}}
{{% /columns %}}

 {{ /* NEXT CHUNK */}} 

{{% columns ratio="3:1" %}} {{ /* begin columns block */ }}  

## Your DSBOOK dir

In this book, we will assume you have created a directory that we will refer
to as your `DSBOOK` directory.  A good choice for this is `~/dsbook` but you can 
choose what you like.  We'll use a code block like the one below to indicate
one or more commands you should run from the command line.

Go ahead and create the `DSBOOK` directory with:
```sh
$ mkdir ~/dsbook
```

{{% hint info %}}

The "copy code" button on this website will copy all the text in that one line 
command above _including the dollar sign_.  This is unfortunate, but it is customary
to use the '$' to indicate a shell prompt;  you do not want to copy and then
paste the text of a command like that _with the dollar sign included_.  

{{% /hint %}}

<---> {{ /* magic separator, between columns  */ }} 

Not-very-pro-tip:
In whatever shell you are going to be pasting into, type "echo "  (with the space)
first _then_ paste and hit return.  That just harmlessly copies the text to the 
screen and then you are free to copy again or edit however you want.

{{% sidebar %}}
{{% /sidebar %}}
{{% /columns %}}

{{ /* NEXT CHUNK */ }}  
{{% columns ratio="3:1" %}} {{ /* begin columns block */ }}  

Go into the newly created directory (which, in this book, means `cd ~/dsbook`) and create
the first version of your enable script.  It is recommend you use the convention of making the
enable script for a project `foo` be `enable-foo`.  In this case you should
open your editor on `~/dsbook/enable-dsbook` and enter this content:

<---> {{ /* magic separator, between columns */ }}  
{{% sidebar %}}
> Please! Gentlemen! You cannot fight here! This is the war room!  -- from Dr. Strangelove.

 We are perfectly cool with it though if you want to throw shade at other
people's editors.

{{% /sidebar %}}
{{% /columns %}}

{{ /*  NEXT CHUNK  */ }}

{{% columns ratio="3:1" %}} {{ /* begin columns block */ }}  

We are quite sure that some readers are fuming about the `PATH` variable in this
script and how minimal it is.  This is by design and is set to this "tiny" value
in an effort to make sure that anything that ends up in your `PATH` is done
consciously.  If you "get lucky" that you find some tool in your `PATH` via
`/usr/local/bin` or similar, you are likely to get "unlucky" at some point later
when some future version of you deletes the tool or upgrades the tool to a
no-longer-compatible version.

<---> {{ /* magic separator, between columns */ }} 
{{% sidebar %}}

"How can I possibly be expected to do anything even minimally useful with
a `PATH` like that?!?"

{{% /sidebar %}}
{{% /columns %}}
