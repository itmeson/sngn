Strega Nona
###########

:date: 2014-07-15
:tags: growth, rates, linear, exponential, units
:category: book


Strega Nona by Tomie de Paola, is a delightful story -- if you haven't, you
should definitely go read it. Big Anthony, who "doesn't pay attention", takes a
job working for Strega Nona, the woman everyone in the village goes to for help
with their headaches and husbands and warts. He cleans the house and takes care
of the goat, and in exchange gets food to eat and a place to sleep -- he thinks
it's a very good deal.

One evening, Big Anthony eavesdrops on Strega Nona, hearing her sing a little
song to her pasta pot, which is suddenly "filled with steaming hot pasta." "How
wonderful!" thinks Big Anthony -- "that's a magic pasta pot for sure!" He tells
everyone in the village about the pot, but they laugh at him, saying he should
go confess to the priest after such a big lie.

This makes Big Anthony angry -- something my son (now 5) points out is
"not a good thing to be" -- sometimes being angry causes some bad choices. Big
Anthony vows to prove them wrong.

Just days later, Strega Nona goes to visit her friend, Strega Amelia, leaving
Big Anthony to take care of things while she is gone, and he takes the
opportunity to try out the pasta pot for himself. Unfortunately, Big Anthony
missed a crucial detail in the song that is supposed to cause the pot to stop
making pasta -- leading to a classic Sorcerer's Apprentice episode.

First Big Anthony sings the song to produce pasta, and the pot is "instantly
filled with steaming hot pasta" -- so he quickly runs down to the village to
tell everyone to gather "forks and spoons and platters and bowls -- pasta for
all at Strega Nona's house!"

Everyone comes running (with forks and platters and bowls), expecting to have
another chance to laugh at Big Anthony, but they are shocked to find pasta
beginning to spill out of the pot and onto the floor. Big Anthony works
quickly, serving all the villagers (even the priest and the sisters of the
convent!) with some coming back for seconds.

Everyone is gathered around to congratulate Big Anthony when one of the sisters
of the convent notices that pasta is beginning to spill out the doors of the
cottage. Big Anthony runs inside, shouting the song to stop the pasta pot, but
still missing the crucial detail (blowing a kiss to the pot at the end). One of
the villagers pulls Big Anthony out of the cottage only just in time to save
him from being smothered by the pasta, which has by now filled the entire
cottage.

Within minutes, a wall of pasta is descending the hill toward the village, and
the people are running for their lives. Of course, Strega Nona returns just in
time to prevent the pasta from entirely engulfing the village and Big Anthony
is required to  eat all the pasta to clean up the mess.
ScrubbingCalculator/
A delightful story.  But I am of course left wondering....

-----------------------
How much pasta is that?
-----------------------



So let's start doing some back-of-the-envelope estimates of the amount of pasta
involved.

 How much pasta does it take to feed just two people, Strega Nona and Big Anthony?

When you cook pasta the normal way, you have to heat up water, usually several
quarts of it, in a pot.  When the water is boiling, you toss in pasta (I
usually use a 1 pound bag/box for my family of 4), and then let it cook for
around 10 minutes.  Then you drain the water out, toss in sauce, and eat.  With
this much pasta, my family usually has leftovers, which I eat for lunch the
next day.

If a 1 pound bag or box of pasta is too much for 4 people, it's certainly too
much for two people.  Even if one of them is Big Anthony.

So half a pound of pasta for the two of them, and this happens just about
instantly --- when Strega Nona finished the song the first time, the pot was
"suddenly filled with steaming hot pasta".  If the pot was *filled* and the two
of them had a full meal without leftovers (and they probably didn't since they
don't seem to have a refrigerator), then the pot is really quite small.  It
only holds enough to feed two people, one half pound of pasta, and about 3
quarts of water.

 Do these numbers make sense to you?  If you quibble with them, go ahead and change them to numbers that seem right to you.  The calculations that follow will use whatever numbers you put in here:


TODO: two different block quote formats, one for me and one for the interlocutor. 
TODO: unit definition block

PotVolume: 3 quarts
PotMass: 0.5 pounds
TimeForOnePot: 1 second
PastaPerPerson: PotMass / 2


What about serving the entire village? Well it's a little hard to tell how many
people live in this "town in Calabria". There is a Mayor, there is a Priest,
there are "the sisters of the convent", there's Big Anthony and Strega Nona of
course, and some number of regular townsfolk. Tomie de Paola's artwork never
shows more than 10 or 15 people at a time, but this seems to be too small for
such a town. Comparing to some demographics for medieval European settlement we
get a figure of about 100-300 for a "village" and 1000-8000 for a "town" --
both of these seem too big given the artwork in the story, so I'll settle for
the lowest number of 100:

TownPopulation: 100

**How much pasta will it take to feed the whole town?**


This brings us to our first derived result -- the mass and volume of the pasta
produced to feed the town:

PastaPerPerson * TownPopulation


PastaPotsPerTown = TownPopulation / OnePastaPotServings
PastaMassPerTown = PastaPotsPerTown * OnePastaPotMass
PastaVolumePerTown = PastaPotsPerTown * OnePastaPotVolume
TimeToFeedTown = PastaPotsPerTown * OnePastaPotTime
print PastaPotsPerTown, PastaMassPerTown, PastaVolumePerTown, TimeToFeedTown

50 50 150 50

50 pots of pasta, with a mass of 50 pounds, a volume of 150 quarts (37.5
gallons), in 50 seconds of cooking time.

Which is our first strange result -- surely it took longer than 50 seconds to
feed everyone in the town? Some of them twice? Big Anthony wasn't moving that
fast.

So what does this mean? The pot must have two cooking modes -- "dinner-for-two"
mode, which is essentially instantaneous, and "feed-the-multitude" mode, which
is actually slower than dinner-for-two, or Big Anthony would have been swimming
in pasta long before he had finished serving the whole town.

This actually makes sense, so let's figure out how fast the pot is working in
this "feed-the-multitude" mode: I'll assume it takes about 20 minutes to feed
everyone. This is a little fast, but they seemed to be very excited about the
freee pasta:

ActualTimeToFeedTown = 20.0 #minutes
MultitudeModeCookRate = ActualTimeToFeedTown / PastaPotsPerTown
print MultitudeModeCookRate

0.4

So Multitude-Mode works at 40% of the speed of normal dinner-for-two mode. You
might argue that in fact the pot just produces a new pound of pasta whenever it
is empty, so the rate could go as high as you need to feed a larger multitude
-- but this would only work if someone helped Big Anthony serve. The pot may
indeed be magical, but Big Anthony is most certainly not.

And come to think of it, we already know that the pot will keep producing more
pasta even when it is not empty, because we saw that pasta was spilling onto
the floor when Big Anthony returned with the townsfolk. Which means that there
is a third cooking mode: ThePotIsLonelyMode is slower than MultitudeMode and
slower than DinnerForTwoMode -- since it certainly took more than 5 minutes for
Anthony to return with the townsfolk, which would have been enough time to
produce 300 pounds of pasta in DinnerForTwoMode, and 120 pounds in
MultitudeMode.

Next time let's think about the last stage of the story, which ends with the
townsfolk running down the hillside toward the town square with a wall of pasta
pursuing them:

Q: How big is the town?

Q: What volume of pasta is required to fill the area from Strega Nona's cottage
to the town square? What assumptions are required to answer this question?
