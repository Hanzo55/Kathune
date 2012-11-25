Kathune
=======

Kathune is a multi-threaded CFML-based spidering engine, used primarily to farm data off of the Battle.net guild
recruitment forums, as well as various public World of Warcraft fan forums which facilitate guild recruitment
communities. Kathune is smart enough to parse the forum posts it spiders, and intelligently decide if the post's
content is a guild looking for people (which it does not care about), or if it is a person looking for a new guild
(which it *does* care about), and indexes only that content.

Kathune runs in three concurrent phases, which are summarized as:

1. Make HTTP requests out to sites and parse their data.

2. Process the parsed data, determining which content is relevant.

3. Rank the relevant content, flagging it for availaibilty via a front-end search.