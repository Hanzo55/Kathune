<cfcomponent displayname="Blizzard" output="false" extends="com.hanzo.cf.Kathune.KathuneTentacle">

    <cffunction name="init" returntype="com.hanzo.cf.Kathune.tentacle.Blizzard.BlizzardTentacle" access="private" output="false">
        <cfargument name="settings" type="struct" required="true" />

        <!--- this is an abstract base class which contains shared parsing rules for blizzard-forums in general. should not be instanced. --->
        <cfset setHook( 'topic' )>

        <cfset setLinkRegularExpression( '<a href="../topic/([0-9]+)" [^>]+["|'']>([^<]+)</a>' ) />
        <cfset setBodyRegularExpression( '<div class="post-detail">(.+?)</div>' ) />

        <cfreturn super.init( arguments.settings ) />
    </cffunction>

    <cffunction name="getThreadByHook" returntype="string" access="public" output="false">
        <cfargument name="hook" type="string" required="true" />

        <cfreturn getThreadURL() & '/' & getHook() & '/' & arguments.hook />
    </cffunction>

</cfcomponent>