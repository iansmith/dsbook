# Simplicity Is A Virtue
## How To Build Modern Web Apps With datastar
## **by [delaneyj](github.com/delaneyj) and [iansmith](github.com/iansmith)**

###  This is a very sad HomePage

I've been experimenting with tailwind and have an acecptable home page design
that I could put here.  It's not _good_ it's acceptable.  It's basically a
hero page from daisyui with the rocket image from the data-star.dev website.
The text of the home page is--just to get started--

>This is the best book about datastar.  This a trivially true because its the only book about datastar.<br/>
This book was brought to by people who have strong opinions.  Thankfully, those opinions are always correct.  Heh.

Ideas? My visual design skill is between awful and unspeakably bad.

### For Delaney

* I am sorry that I used your name without your permission.  __Obviously, I will
    remove it if you don't want to be involved.  Nobody has seen this other than
    you and I can remove it quickly.__  However, I was hoping I could 
    convince that this is both needed to address the "learning curve" of datastar and could
    be fun.  The sidebar on the right of the text pages (check out the two or
    three in various states of disrepair in Lesson 00) is meant to be where
    get to put snark, memes, etc.  Besides, you got top billing!
    * I used the "royal" we in the text. Again, I can fix that easily.

* Thematically, I think the book should really beat the hell out of the reader
    about simplicity.  This is both because it's true that DS is simple and
    we can really hammer the differences with the complexity of React and friends.
    Stylistically, I think the book should be fun and lighthearted. Lot's o'
    memes.

* I'm planning to use mirabeau, the presentation giver that I've been thinking
    about, to be the app folks will build via the book.  It shows off some nice things and would
    be fun to use!  I think the tool should (natch) support Datastar demos that are embedded
    in the content!
    * My basic plan (such as it is) is that mirabeau is a program that exposes
        a webserver on localhost somewhere (no security issues).  Then you 
        connect to it with your browser and you can do _all the things_ related 
        to giving a prezo.  The "slides" 
        part will be in files in  markdown and, because it's go and we can, 
        everything is _hot_.  Just run goldmark or whatever. Every  time you make 
        changes to the content of the 
        prezo it live updates into the browser. It would be a great meta-demo.
    * I think with a little bit of work on the server of mirabeau you could 
        programmatically expose _other_ servers that it creates via the golang
        os (or exec) interface.  These are servers that are the ones that 
        have specific demos on them for use in the prezo.  Naturally they 
        should be _hot_ as well.

* If you think you have a better app handy, we should talk about it.

* I put together about the first 10 lessons for the book. The amount of details
    vary, but  I think there is enough information for you to get the jist of the
    lessons.  **I HAVE NO ALLEGIANCE TO ANYTHING I'VE WRITTEN AND IT MAY BE TOTAL
    AND COMPLETE SHIT.  PLEASE COMPLAIN.**

* I built this site with hugo. I don't have a super strong opinion about it other
    than 1) I know it and 2) it's written in go, so I have more confidence in it. I'll
    have do some machinations to get hugo to do the magic of running the so-called
    JIT of tailwind/daisyui as part of its server apparatus.  It's easy to do with 
    `hugo build` but harder with `hugo server` (which is a localhost website with 
    live update) because you need to fool with `postcss` and some other crap.

* I'd like to start putting out articles/lessons soon for the community see, comment on,
    send PRs, etc.  This is to head off any intellectual competition and to attempt
    to absorb the any competitors' ideas like an ameoba.

* My dream is that this book can be the [git book]() for datastar.  I think that
    book is a _bit_ too bottom up and we should give people some success with
    candy sooner.