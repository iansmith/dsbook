+++
weight = 9
title = 'The Enable Script'
+++

# The Enable Script

{{% columns ratio="3:1" %}} <!-- begin columns block -->


An enable script is a quite a specific shell script.  It's purpose is to be
put into your current shell's environment with `source` and have that shell
be "ready" for development work.   If you are not familiar with building
shell scripts (or simply despise them for all the obvious reasons), this
script is going to be so simple that it can easily be your first.

<---> <!-- magic separator, between columns -->
{{% sidebar %}}

One of the authors (iansmith) learned this technique in 1991 and it was noted
by his colleagues that this technique was "old" then.

{{% /sidebar %}}
{{% /columns %}}

{{% columns ratio="3:1" %}} <!-- begin columns block -->

We are guessing that many readers are thinking, "I know how to use the shell,
I don't need this."  This technique rewards study.  Be sure you understand the
idea and the practice of the enable script before you decide to skip this bit.
We are going to use it throughout this book.  There are number of both common
and unusual problems that the enable script technique avoids.  


<---> <!-- magic separator, between columns -->
{{% sidebar %}}

Many of these problems seem to occur the night before a big demo.  At such times
you're under pressure and not as careful as you might otherwise be.

{{% /sidebar %}}
{{% /columns %}}

{{% columns ratio="3:1" %}} <!-- begin columns block -->

## Your Dirs

In this book, we will assume you have created a directory that we will refer
to as your `DSBOOKDIR`.  A good choice for this is `~/dsbook` but you can 
choose what you like.  Go ahead and create the `DSBOOK` directory with:
```sh
$ mkdir ~/dsbook
```

Go into that directory (which, in thsi book, means `cd ~/dsbook`) and create
your enable script.  It is recommend you use the convention of making the
enable script for a project `foo` be `enable-foo`.  In this case you should
open your editor on `~/dsbook/enable-dsbook` and enter this content:

<---> <!-- magic separator, between columns -->
{{% sidebar %}}

{{% /sidebar %}}
{{% /columns %}}


{{% columns ratio="3:1" %}} <!-- begin columns block -->


{{% tabs %}}
{{% tab "MacOS" %}} 

{{< code language="sh" source="/docs/include/enablescript1" >}}

{{% /tab %}}

{{% tab "Linux" %}} 
#### Linux Content 
{{% /tab %}}

{{% tab "Windows" %}} 
#### Windows Content {{% /tab %}}
{{% /tabs %}}

<---> <!-- magic separator, between columns -->
{{% sidebar %}}

{{% /sidebar %}}
{{% /columns %}}
