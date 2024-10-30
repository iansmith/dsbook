---
bookFlatSection: false
Title: '(02) The Countdown'
weight: 200
---

# Lesson 2: The Countdown

When you are giving a presentation you probably want to how much time you
have left for speaking!

We are going to add a countdown timer to the clock we built in the last lesson.
Again, this will be much smaller in the final UI but we're going to leave it
big for one last lesson.

We are going to:

* Add a countdown timer to the display, that when engaged can start a countdown
    of 30 mins.
* Take in/send out the store values using a type `PatchStore`.


 ## Exercises

 * Adapt the countdown timer so that can be initialized to 60, 45, 30, 20 or 5 mins.
    * Click on the countdown timer to set it for 40 mins, the next click is 30, etc.
        After you do a click, the timer begins immediately counting down. So,
        the click is both a way to change the amount of time *and* a reset.

### For the truly gung-ho (advanced exercises; we don't provide the answers)
    * Take the existing timer code and use it to create the digital equivalent of 
        a flyback stopwatch.  
        * A click causes the countdown timer to stop but the time keeps advancing normally.
            A second click causes the countdown timer to "flyback" to "now" and update
            accordingly. 
    * Cause a "screen-wide" warning to flash when the countdown time reaches
        5 min and 1min.  
        * At zero mins remaining the timer and clock should both disappear.
    * [Hard] Change the display  to the show the time as if on
        an analog clock.  This requires either some skill with graphics or
        trigonemetry/matrices or both.
