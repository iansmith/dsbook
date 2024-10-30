+++
Title = '(08) Testing'
weight = 800
+++

## Testing

We want to show our testing story and how we can "unit test" and a really nice
level without needing jest or whatever the crap else.  

Do we want to explain picturebook?

By using the ability to send things/receive things across the event bus from the , 
we can isolate subsystems.  We can even use a channel to check that the final
result beig sent to the long-lived connection is legit.

By using the store manipulation as the testing level, we can do simulations
of many different user situations, including users making errors.  We should
show how we can setup a scenario where the DS server has some pages loaded
(via the event bus!) and then see how it reacts to various user inputs that
get sent as updates.  For example, what if the user does next slide at the 
last slide? What happens if there is only slide, what does user input do?

I think there might be a need to refactor the golang helpers a tiny bit into a
golang interface here. The idea would be  so we can introduce a mock into 
places like `PatchStore` and `PatchStoreRaw` so we can see the end effect
of calling a user action with a given store content.
