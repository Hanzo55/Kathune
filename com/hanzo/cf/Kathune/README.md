==========
Kathune.cfc
==========

Kathune.cfc is the multi-threaded spidering engine. It is responsible for:

1. Reading the config.xml upon wire-up and becoming aware of what Tentacles (ie. Web Sites / Forums) are slated to scrape.

2. Process each Tentacle in its own thread space.

3. Keep the queue of Tentacles churning perpetually.

4. Handle the three phases of scraped-data analysis.

5. Tweet about users searching for recruits at WoW Lemmings, as well as announcements about newly discovered (read: scraped/ranked) data.

==================
KathuneTentacle.cfc
==================

For every Web Site / Forum that must be scraped, there is an equivalent instantiation of the KathuneTentacle.cfc object. By default,
each KathuneTentacle is self-contained, and has within the logic to parse any forum for World of Warcraft guild recruitment
information, and can make a determination on whether the parsed content is relevant. This decision was done so that newly created
Tentacles can be unit tested outside of the Kathune spidering engine itself.

Additionally, KathuneTentacles are designed to have their internal analysis options enabled/disabled, per tentacle. What this means is:
for every rule that must be assessed (ie. "Is the forum post I'm looking at a Horde player or an Alliance player?"), there is a mechanism
to disable the analysis portion, and manually flip it one way or the other. This is done to support the myriad of websites that do not
require that analysis, such as a forum like MMO-Champion, which categorizes recruitment posts into Horde and Alliance on its end.

It is worth pointing out that when Kathune was built (Feb. 2008), the Battle.net forums were not categorized this way, but have since
migrated to a more clearly defined taxonomy.

=======
Post.cfc
=======

The Post.cfc object is a bean which encapsulates the individual forum data excavated from a forum scrape. When the data is pulled out
of the db cache, a Post.cfc object is used to wrap this data, in order to provide dynamic functionality, in case the objects' methods ever
need to be overridden.