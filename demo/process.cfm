<cfparam name="url.bodiesOnly" default="false" />
<cfparam name="url.scoreOnly" default="false" />
<cfparam name="url.pruneOnly" default="false" />
<cfparam name="url.twitOnly" default="false" />
<cfparam name="url.twitSearchOnly" default="false" />

<cfscript>
    // maximum amount of posts to fetch from the db in an attempt to grab bodies, the higher the number, the more expensive / cpuhog like this spider becomes.
    // this number should not go any higher than the CFADMIN thread max.
    httpFetchMaximum = 8;

    if ( url.bodiesOnly )
        // Phase 2: Examine recently spidered-forum posts threads, which do not have a body, and fetch the content of their bodies.
        request.kathune.Feed( httpFetchMaximum );
    else if ( url.scoreOnly )
        // Phase 3: Examine recently spidered-forum posts that have their bodies, and rank them. A ranked post means it can be considered during search.
        request.kathune.Digest( httpFetchMaximum );
    else if ( url.pruneOnly )
        // Phase 4: Prune the fully scored posts for potential URL/title mismatches (for forums whose thread ids are reused *cough* Blizzard *cough*)
        request.kathune.Torment( httpFetchMaximum );
    else if ( url.twitOnly )
        // This process Tweets about newly discovered recruits on the WoWLemming Twitter Acct.
        request.kathune.Glare();
    else if ( url.twitSearchOnly )
        // This process Tweets about what WoWLemming's users are searching for.
        request.kathune.Thrash();
    else
        // Phase 1. Process the next x amount of endpoints (recruitment forums) in the queue, and dump their unranked results into a db. Multi-threaded.
        request.kathune.ExtendTentacles( httpFetchMaximum );

    // save some cpu cycles and only attempt to update history on the 1st of the month.
    if ( Day( Now() ) EQ 1)
        request.kathune.Boast();
</cfscript>
<!--- <cfoutput>#request.kathune.dumpInternals()#</cfoutput> --->