Kathune
=======

Kathune is a multi-threaded CFML-based spidering engine, used primarily to farm data off of the Battle.net guild
recruitment forums, as well as various public World of Warcraft fan forums which facilitate guild recruitment
communities. Kathune is smart enough to parse the forum posts it spiders, and intelligently decide if the post's
content is a guild looking for people (which it does not care about), or if it is a person looking for a new guild
(which it *does* care about), and indexes only that content.

Kathune runs perpetually in three concurrent phases, which are summarized as:

1. Make HTTP requests out to sites, extract posts whose titles match the Kathune ranking algorithm, and dump those
into a database.

2. Poll the data from Step 1, make return HTTP trips, and retrieve the post bodies, updating the database
appropriately.

3. Scan the database for new (unranked) data with post bodies, and rank it, which causes the content to be flagged
for availaibilty via a front-end search.

============
Installation
============

1. Create the database with the schema provided (Kathune_MSSQL.sql)
2. Set up the following Scheduled Tasks:

  a) Kathune-Fetch: http://localhost/process.cfm (every 12 min.)
  
  b) Kathune-Score: http://localhost/process.cfm?scoreOnly=true (every 6 min.)
  
  c) Kathune-Update: http://localhost/process.cfm?bodiesOnly-true (every 10 min.)
    
  Additionally, if you want to add Twitter Bot support, two more tasks are required:
  
  d) Kathune-Twit: http://localhost/process.cfm?twitOnly=true (every 1 hr.)
  
  e) Kathune-TwitSearch: http://localhost/process.cfm?twitSearchOnly=true (every 1 hr.)
  
3. Add in your Twitter oAuth info within Kathune.cfc
4. Specify one or more Web Sites to farm recruitment info off, in the config.xml (TODO)

=====
Notes
=====

You are absolutely allowed to criticize (and encouraged to do so!) but I would like to take a quick opportunity
to provide a few caveats, which may (or may not) explain my decisions:

1. Kathune was built in early 2008, prior to the release of WotLK, which predates the availability of the WoW
Community API. As a result, there's some superfluous work being done in Kathune that could be offloaded to the
API (ie. lookup of realm-names).

2. I'm well-aware that Kathune.cfc is still heavily monolithic, and could be broken out further, esp. in regards
to the functionality surrounding the Bot-style tweeting.

3. The goal was to have the Tentacles be set up using the Decorator pattern, but I didn't grasp this concept
until well after Kathune was built. I feel very strongly that Decorators would serve this design better (and
are coincidentally used in my [WoWColdFusion API](https://github.com/Hanzo55/WoWColdFusionAPI)).

4. The ridiculous naming convention of the methods (Digest, Glare, Thrash, Feed) as well as the individual
spider objects (Tentacles) are my own playful way of paying tribute to [C'thun](http://www.wowhead.com/npc=15727),
one of the Old Gods in World of Warcraft, which this spidering engine is named after (Kathune is the phonetic
pronounciation of that boss's name). 

  Because these arbitrary method names do not explain their behavior, I've provided additional
  hints and comments to assist with the deciphering of this code. 

  READ: I *DO NOT* CONDONE this style of naming! It is *completely* unmanagable and *IS NOT* a best practice!!

  ...but I also never planned on making the source available, so take Kathune's naming conventions with a grain of
  salt, and please: [Do as I say](http://cfbestpractices.blogspot.com/), not as I do.

==========
Usefulness
==========

I don't know how useful this will be, since Kathune is highly tailored for a specific set of business
rules, however, it may serve to provide a more broad understanding of the architecture behind a
multi-threaded CFML application.

Also, in an effort to eat my own dog food, I'm taking this opportunity to clean it up and implement
more consistent best practices, since I write a blog on the subject, (http://cfbestpractices.blogspot.com)
and should not be excluded from the methods I preach.