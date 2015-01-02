A lot of Ants
#############

:date: 2015-01-02
:tags: structure, factoring, algebra
:category: book




**One Hundred Hungry Ants**, by Elinor J. Pinczes and illustrated by
Bonnie MacKain, is another delightful story, in which a colony of ants
sets out to raid a picnic. They start out marching in single file, when
the littlest ant, a budding mathematician, shouts "Stop, we're moving
way too slow. Some food will long be gone unless we hurry up. So... with
2 lines of 50 we'd get there soon, I know."

So the ants scurry about to reform into 2 lines, then set out again. But
of course the littlest ant realizes that they could go even faster in 4
lines of 25. And then why not 5 lines of 20? 10 lines of 10?

Unfortunately, by the time the ants arrive at the picnic, the squirrel, skunk,
mouse, and others have taken all the food already and the littlest ant is left
to scramble away from the others, who are very disappointed and angry.

How did the little ant get it wrong? Does it make
sense that traveling in shorter lines should get you there faster? And
if it does, is there an optimum line length? Was it just the lost time
from rearranging the columns, so if they had picked the right arrangement from
the start they really would have gotten there faster? Or is the whole idea wrong?

We have to think about how ants think. Ants are social insects. While
you do see single ants out foraging, they are really part of a huge
team, whose goal is to bring as much food as possible back to the nest,
as quickly as possible. That's how they take care of their queen and
larvae, who don't usually leave the nest.

If they are foraging for food, meaning they don't know where it is yet,
they will go out alone, leaving behind little pheromone trails to show
where they have gone. When a number of ants discover the same food
source, they will have left a lot of pheromones behind showing the way
to the source, so more ants will follow those trails, further
reinforcing that this is a great place to eat.

The ants in this story seem to know where they are going, which suggests
that a solid pheromone trail has already been laid down for them. So the
ants in the lead are following that trail, and the ants behind are
following the trail and the ants up front.

So, first question: **Does the arrangement of columns affect how fast
the leaders travel?**

No. No it doesn't. If the leaders already know where to go, then it really doesn't
matter to them how many other ants are arranged behind them -- they'll just go
as fast as they can.  So a first guess at explaining what went wrong is that the
littlest ant was just plain wrong -- since the leader's speed is unaffected by
the arrangement of columns, they will arrive at the same moment regardless of
the arrangement.  So putting the ants in different configurations wouldn't have
helped even if they got it right at the start, and they were slowed down even more
by all the stopping and starting to reconfigure.

So is that it?

Remember, the point is to get *all* the ants to the picnic, so they
can, working together, carry *all* the food back. This means that it
doesn't really matter how soon the lead ants arrive. It matters how soon
the vanguard arrives (meaning the majority of the ants are able to start
working) and how soon the last ant arrives (meaning that they are all
present and can start heading home carrying the food).  So let's change our
question a bit:

**How long will it take the last ant to arrive at the food, and how does the
column configuration affect that last ant's arrival time?**

So let's say that each ant walks the same speed, let's call it 1
centimeter per second, and then ...

 Wait??!  How do you know how fast ants can walk?

I don't.  I just made the number up.

 But -- won't that throw off all the results?  Is this all just meaningless?

No.

 But??

Okay, so if we *really* want to know how long it's going to take the ants to get
there, we do need to know their precise, exact speed.  But that's not really
what we're trying to figure out.  We're partly trying to understand how
different configurations affect the arrival time of the ants and we're partly
trying to understand something deeper about using different representations of
the same thing in order to see more clearly what is going on (that's the essence
of algebra and of all true mathematics).  For both of those purposes, the exact
speed doesn't really matter, as long as we are consistent about how we use that
speed.

Also, 1 centimeter per second happens to be a pretty good number, if you
think about it (how big is an ant? how long does it take an ant to walk it's own
body length?  how long does it take *you* to walk your own body length?)

And also? We're going to do some cool simulation stuff with this problem and you'll
be able to change the assumptions about the speed of the ants and the distance
to the picnic and the number of ants and a few other things -- and then you can
tell me whether the ant speed really matters or not.

 So?

So let's call the speed 1 centimeter per second for now, for the sake of argument,
so we have something to get started with, and see where it takes us?  Okay?

 Okay.
