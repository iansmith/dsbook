+++
Title = '(07) The Microlith Architecture'
weight = 700
+++

## The Microlith Architecture

This lesson is just an essay and the reader could skip it if they want.

The readers at this point should understand enough to see the microlith 
architecture coming through in the current state of mirabeau.

We want to slam microservices, naturally, as overly complex and prone to 
failures for anything but the largest companies.  We need to eviscerate
K8S because it deserves it.

The key here is to make the case that from days 2-N the microlith can get
you a long way without making a bunch decisions that are going to constrain
your ability to scale later.   Add to the case that golang produces statically
link binaries and can have all the content baked into them.  A single process
is much easier to work on, debug, and deploy.  You can even run it on your
local laptop!

On day N+1, yeah, maybe you are getting so big you need to start using techniques
to scale up your service.  We should use this an opportunity to explain what
a collection of nats servers can do and how you could have many senders and
listeners distributed and thus allowing more throughput/scale/whatevs.

I really want to hammer home the build/test/debug/deploy simplicity of the
single binary microlith.


