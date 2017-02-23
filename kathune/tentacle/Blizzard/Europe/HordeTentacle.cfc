<cfcomponent displayname="Horde" output="false" extends="tentacle.Blizzard.Europe.EuropeTentacle">

	<cffunction name="init" returntype="tentacle.Blizzard.Europe.HordeTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://forums.wow-europe.com/board.html?forumId=9575909') />
		<cfset setSource('World of Warcraft (Europe Forums) -> Guild Recruitment -> Horde') />
		
		<cfreturn super.init(arguments.settings) />
	</cffunction>
	
	<cffunction name="CreatePostObjectFromQueryRow" returntype="Post" access="public" output="false">
		<cfargument name="dataQuery" type="query" required="true" >
		<cfargument name="row" type="numeric" required="true" />

		<cfset var postObject = super.CreatePostObjectFromQueryRow( arguments.dataQuery, arguments.row ) />

		<cfset postObject.setIsAlliance( false ) />
		
		<cfreturn postObject />
	</cffunction>
	
</cfcomponent>