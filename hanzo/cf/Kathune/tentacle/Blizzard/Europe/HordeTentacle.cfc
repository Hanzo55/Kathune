<cfcomponent displayname="Horde" output="false" extends="hanzo.cf.Kathune.Tentacle.Blizzard.Europe.EuropeTentacle" implements="hanzo.cf.Kathune.interface.ITentacle">

    <cffunction name="init" returntype="hanzo.cf.Kathune.Tentacle.Blizzard.Europe.HordeTentacle" access="public" output="false">
        <cfargument name="settings" type="struct" required="true" />

        <cfset setForumURL( 'http://forums.wow-europe.com/board.html?forumId=9575909' ) />
        <cfset setSource( 'World of Warcraft (Europe Forums) -> Guild Recruitment -> Horde' ) />

        <cfreturn super.init( arguments.settings ) />
    </cffunction>

    <cffunction name="CreatePostObjectFromQueryRow" returntype="hanzo.cf.Kathune.Post" access="public" output="false">
        <cfargument name="dataQuery" type="query" required="true" />
        <cfargument name="row" type="numeric" required="true" />

        <cfset var postObject = super.CreatePostObjectFromQueryRow( arguments.dataQuery, arguments.row ) />

        <cfset postObject.setIsAlliance( false ) />

        <cfreturn postObject />
    </cffunction>

</cfcomponent>