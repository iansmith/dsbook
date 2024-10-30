---
bookFlatSection: false
Title: '(04) Markdown'
weight: 400
---

# Lesson 4: Markdown Display

In this lesson you are going to take a slight detour.  
    * How create an internal api that hides an implementation, in this case the
        API will be the ability to take blobs of text and interpret them as Markdown
        and display them on screen.
    * Use goldmark to do the processing and then use the long lived connection
        to display the resulting HTML.  
    * Use a golang chan for communicating to the long lived conn so it can
        block on select.

## Lesson summary

At the end of this lesson you should be able to explain:
* How the long lived connection can be used by _any_ goroutine to communicate
    with the currently connected client.

### For the truly gung-ho (advanced exercises; we don't provide the answers)
    * Answer the quetion of what would happen if you run two browsers that
    are connected to our example mirabeau server?




