+++
Title = '(09) The Watchers'
weight = 900
+++

## The Watchers

We'll create a collection of goroutines that are watching all the files in a
given directory (1 goroutine per file) and when something changes it sends the
new content along the event bus to cause the screen to be updated live.  

We should add a test that shows that if you change a file the requisite
watcher fires the message on the bus.

It would be fun to somehow offer the ability to "edit source" of a particular
slide.  Natch, we'd live update the HTML as the user types (not on save).

