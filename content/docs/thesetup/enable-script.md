+++
weight = 30
title = 'The Enable Script'
+++

{{% columns ratio="3:1" %}}

# The Enable Script

An enable script is a quite a specific shell script.  It's purpose is to be
put into your current shell's environment with `source` and have that shell
be "ready" for development work.   If you are not familiar with building
shell scripts (or simply despise them for all the obvious reasons), this
script is going to be so simple that it can easily be your first.

<---> 

{{% sidebar %}}

One of the authors (iansmith) learned this technique in 1991 and it was noted
at that time by his colleagues that this technique was "old" then.

{{% /sidebar %}}
{{% /columns %}}

{{% columns ratio="3:1" %}}

We are guessing that many readers are thinking, "I know how to use the shell,
I don't need this."  This technique rewards study.  Be sure you understand the
idea and the practice of the enable script before you decide to skip this bit.
We are going to use it throughout this book.  There are number of both common
and unusual problems that the enable script technique avoids.  

<--->
{{% sidebar %}}

Many of these problems seem to occur the night before a big demo.  At such times
you're under pressure and not as careful as you might otherwise be.

{{% /sidebar %}}
{{% /columns %}}

{{% columns ratio="3:1" %}} 

### Your DSBOOK dir

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

<---> 

Not-very-pro-tip:
In whatever shell you are going to be pasting into, type "echo "  (with the space)
first _then_ paste and hit return.  That just harmlessly copies the text to the 
screen and then you are free to copy again or edit however you want.

{{% sidebar %}}
{{% /sidebar %}}
{{% /columns %}}

{{% columns ratio="3:1" %}}

Go into the newly created directory (which, in this book, means `cd ~/dsbook`) and create
the first version of your enable script.  It is recommend you use the convention of making the
enable script for a project `foo` be `enable-foo`.  In this case you should
open your editor on `~/dsbook/enable-dsbook` and enter this content:

{{% tabs %}}
{{% tab "MacOS" %}} 
{{< code language="sh" source="/docs/include/enablescript1" >}}
{{% /tab %}}
{{% tab "Linux" %}} #### Linux content goes here {{% /tab %}}
{{% tab "Windows" %}} #### Windows content goes here {{% /tab %}}
{{%/tabs %}}

<---> 
{{% sidebar %}}
> Please! Gentlemen! You cannot fight here! This is the war room!  -- from Dr. Strangelove.

 We are perfectly cool with it though, if you want to throw shade at other
people's editors.  We like that.

{{% /sidebar %}}
{{% /columns %}}

{{% columns ratio="3:1" %}} 

We are quite sure that some readers are fuming about the `PATH` variable in this
script and how minimal it is.  This is by design and is set to this "tiny" value
in an effort to make sure that anything that ends up in your `PATH` is done
consciously.  If you "get lucky" that you find some tool in your `PATH` via
`/usr/local/bin` or similar, you are likely to get "unlucky" at some point later
when some future version of you deletes the tool or upgrades the tool to a
no-longer-compatible version.

<---> 
{{% sidebar %}}

"How can I possibly be expected to do anything even minimally useful with
a `PATH` like that?!?"

{{% /sidebar %}}
{{% /columns %}}


{{% columns ratio="3:1" %}} 

### Idempotency
Your enable script should be idempotent so you can run whenver you want.  If
you have any shell and you cd into a project dir like `foo` then the script
`enable-foo` should be there and you can use `source enable-foo` to get that
shell prepared for work on `foo`.   

<---> 
{{% sidebar %}}

Before you ask and embarass yourself: Idempotency is the property of an operation 
that can be applied multiple times without changing the result beyond the initial 
execution. You can safely run an "idempotent operation" multiple times without 
side effects, such as duplicates or inconsistency of data.

{{% /sidebar %}}
{{% /columns %}}

{{% columns ratio="3:1" %}} 

### About The Future
At various upcoming points in the book we're going to suggest that you add
things to your enable script.  Some examples of things that we'll be adding
are:

* Explicit versioning of dependencies for command line programs
* Secrets.  The `DSBOOK` directory is the parent of what is going to be 
    source code directory and that directory will have an associated git
    repository. So, you can safely put secret things, like API keys or
    encryption keys, in the enable script because it won't be checked in.
* Notes.  A common use of the enable-script, since it is personal to the owner
    unlike thinngs in a repository, is to put comments in the enable script
    to keep track of long, complex, or infrequently used commands.

An example note:
```sh
# to run the database consistency check use this (for today -> yesterday)
# you can use dates if you want to but they have to prefixed by -- and 
# in the format YYYY-MM-DD.
# ENV=PROD db-check consistency-external --today --yesterday
# ENV=PROD db-check consistency-external --today --2024-10-01
```

<---> 
{{% sidebar %}}

Using environment variables instead of other means of parameter passing is
[12 factorish](https://12factor.net).

{{% /sidebar %}}
{{% /columns %}}

