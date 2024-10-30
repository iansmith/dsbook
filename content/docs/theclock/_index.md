---
bookFlatSection: false
Title: '(01) The Clock'
weight: 100
---

# Lesson 1: The Clock

No, not [like coldplay](https://youtu.be/d020hcWA_Wg?si=P_Sw06CeyZmhA3PM).

Although it is a very small feature of mirabeau, we are going to walk you through
how the timer works.  We are going to cover this lesson's code in every detail since it is likely
the first source code of a datastar program you have seen.

Eventually this display will be in a corner of the mirabeau UI but for this lesson we've
made it big and central.  That makes things easier to see, especially using
the web debugger in the browser.

#####: _Aside: I don't really want to get into RAF here, because it just complicates the story._

## Lesson summary

At the end of this lesson you should be able to:

* Use the provided Taskfile to build and deploy the mirabeau program
* Be able to make changes to the provided lesson files to change the html
    used by the application 
* Be able to change some browser interactions with application:
    * Change the data that is stored in the store to prove you understand about
        manipulating the store.
        * We are going to just brute force store updates with a string and `PatchStoreRaw()`.
        * Similarly, the store values on input will be brute forced through the normal go 
            json machinery.  No separate type to allow the json decode, just `map[string]any`.

* We need to flagellate the reader with the importance and reason that one should not try to keep
    a lot of state on the client.  This will be the natural thing to do (for some of us, ahem).

At the end of this lesson should also know enough to:

* Explain to others what these mechanisms in datastar are for:
    * Generating html content (for the moment using just strings)
    * Manipulating the store (again, just strings with sprintf or similar)
    * Responding to user input (at least the case of a mouse click) 

* Explain to others the basics of the SSE mechanism
    * Explain where, why and what is the long-lived http GET request in this lesson.
    * Explain why DS doesn't use websockets

* Bonus Points: Explain how the Taskfile works.

* You may not understand all the details of these mechanisms yet, but 
__this is it__ ... there really are no more to learn!

### What's the comparison to react?
* Do we know a React (or whatever) expert who understands DS enough to explain to us what
    the analogies are for React?
* I think it's a good point to take a shot at the whole redux craziness in comparison
to just using some strings of javascript.

### Exercises
* Instrument the code to see how many frames per second your timer is able to perform.

### For the truly gung-ho (advanced exercises; we don't provide the answers)
* Change your store to use a strinng for the current time and drive the string
    from the server with `PatchStore`.  Once you do this, change the string
    to display to be binary, hex, or octal, which ever one you like the most.
* Linux: Use the `/proc/loadaverage` interface to estimate what the maximum number
    of clients your local machine could support at its current framework.  Interpreting
    the information you get `/proc/loadaverage` can be tricky... watch out for
    multiple CPUs!


##### _ Aside: I want to start cutting off performance questions as soon as possible._