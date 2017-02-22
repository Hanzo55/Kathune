<cfscript>
    settings.dsn = 'Kathune';
    settings.user_agent = 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.1) Gecko/2008070208 Firefox/3.0.1';
    settings.siteuuid = 'ABABFF';

    obj = createObject( 'component', 'kathune.tentacle.Blizzard.Europe.EuropeTentacle' ).init( settings );

    obj.Grab();
</cfscript>

<!--- blank page? try this line to see the raw HTML page --->
<!--- <cfoutput>#obj.DumpRawFood()#</cfoutput> --->

<cfset myArr = obj.getPostsAsObjectArray() />

<cfloop from="1" to="#ArrayLen( myArr )#" index="i">
    <cfset post = myArr[i] />
    <cfset post.dump() />
</cfloop>

<!--- fetch the first one --->
<cfif Arraylen( myArr ) GTE 1>
<cfset html = obj.fetchPostByHook( myArr[1].getHookValue() ) />
<textarea rows='15' cols='42' name="go"><cfoutput>#html#</cfoutput></textarea>
</cfif>