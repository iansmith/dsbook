+++
weight = 7
+++

# Who Should Be Reading This Book


## Our target

{{% columns ratio="3:1" %}} <!-- begin columns block -->

When started, this effort had the vague and ill-formed idea that you, our reader, would be somebody who
understands how the web works and knows how to program in go.  If that sounds
like you, you can go to the fridge and get a snack.  
<---> <!-- magic separator, between columns -->
{{% sidebar %}}

Bring us a _cold_ beer, if you got one to spare.

{{% /sidebar %}}
{{% /columns %}}


{{% columns ratio="3:1" %}} <!-- begin columns block -->

If you would like a bit more specificity related to the web, we assume you 
understand what _html_ and  _css_ are and what their respective purposes are.   Further, 
we assume you know at least the basics of go (aka _golang_) programming.  If 
you have experience in C or python you'll find golang quite familiar and you 
can probably scrape by.


{{% hint "info" %}}

There really is no particular reason that golang is required to build programs using
datastar. The datastar library on the browser side is implemented as a small amount of javascript
(about 15Kb) and the library neither knows nor cares how the back-end is implemented.
In fact, demonstrations have been done with node and haskell on the back end--but they
are not supported to the degree that golang is.  The datastar machinery would work
acceptably with any back-end programming language for which there were helper
functions, but the authors think that golang is particularly well suited for datastar.

{{% /hint %}}

<---> <!-- magic separator, between columns -->
{{% sidebar %}}

Hey, no snarky comments suggesting the purpose of html and css is to torment web
developers.  *We* get to do the snarky comments around here.

We'd be happy to have a conversation with somebody who wants to create a parallel
python helpers for datastar.  That would be righteous.

{{% /sidebar %}}
{{% /columns %}}


{{% columns ratio="3:1" %}} <!-- begin columns block -->

Continuing our potentially wrong assumptions, we assume you are familiar how to 
use command line tools in a unix-ish environment.   For example, we have no plan to explain 
what `PATH` or how it works. So, if that's a mystery too you, you probably want 
to read another book first and then come back to us. We developed this content 
primarily on macOS and linux laptops, so things are the best tested there. 

Finally, we assume that you are familiar with _at least one_ templating language
or templating tool.  There are dozens of these types of tools available in the open-source
community and, ultimately, they all do the same thing. Although you may not be
familiar with the one we are using in these lessons, it is not *that* different
from whatever you have seen before.

<---> <!-- magic separator, between columns -->
{{% sidebar %}}

We have no idea about how to do this type of thing in windows with powershell or
the windows linux emulation.  If you do know about things of that nature, we'd love to
get a pull request from you!

{{% /sidebar %}}
{{% /columns %}}

{{% columns ratio="3:1" %}} <!-- begin columns block -->

The most problematic assumption we have made about our readers that you don't
have much experience with Javascript---perhaps none.  This is a difficult
assumption for two reasons:

* People who interested in "front end" or "ui" development today often have a lot of
    experience with Javascript;  many even write Javascript for a living. These folks
    with such experience could certainly be interested in how the datastar layer
    works inside the browser or various things you can do to integrate datastar
    on the backend with javascript on the front-end.
* Readers with little or no javascript experience may find the (ahem) idiosyncratic
    issues with javascript in a browser more confusing then edifying.  We can't
    and won't fit _yet another book_ about Javascript inside this one.

<---> <!-- magic separator, between columns -->
{{% sidebar %}}

*Snark*: Readers who have no experience with Javascript can consider themselves
fortunate.

*Snark*: People who have a lot of JS experience *today* can think of that experience
as better labelled "_pre-Datastar_".

{{% /sidebar %}}
{{% /columns %}}



{{% columns ratio="3:1" %}} <!-- begin columns block -->
So, the compromise we have reached is to do little, but not no, discussion of 
Javascript-related issues in Datastar and to pursue them only as they become needed.  
However, these  will be done with the little "details" box and readers that are
unfamiliar with Javascript can just leave the little arrow down.

<---> <!-- magic separator, between columns -->
{{% sidebar %}}
{{% /sidebar %}}
{{% /columns %}}


{{% columns ratio="3:1" %}} <!-- begin columns block -->

Stephen Weinberg, the nobel-prize winning physicist, wrote the excellent,
thin volume, [_The First Three Minutes_](https://www.amazon.com/First-Three-Minutes-Modern-Universe/dp/0465024378).
He said in his introduction that he hoped that he had written a book that any 
reasonably intelligent individual
could read and understand without a physics or mathematics background.  He said
the book didn't more mathematics than multiplication. He may
have achieved this, but we have no such lofty ambitions.  We're in it for the 
memes.
<---> <!-- magic separator, between columns -->
{{% sidebar %}}

![xkcd](https://imgs.xkcd.com/comics/alternate_currency.png)

{{% /sidebar %}}
{{% /columns %}}
