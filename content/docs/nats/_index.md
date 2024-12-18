+++
Title = '(05) NATS Receiving'
weight = 500
+++

## Nats Receiving

This lesson is to to explain the concepts of nats and build a program that
can handle being "sent" markdown content from the nats CLI.  We will probably
want to do a simple example or two with markdown actually quoted and sent directly
from the command line.

The implementation should just run goldmark (via the previous lesson's API) and then
send the resulting HTML to the display.

We have to explain enough of the CLI to show how you can have multiple listeners,
one in the server showing data on the browser, and another that just displays
the result via the NATS CLI.

I have a couple of type-safe wrappers that work on top of NATS and use 
generics to insure the type-safety.  E.g. You cannot "subscribe" to a subject
for which you don't have the correct type declared on your "Receive" method.

