<cfcomponent displayname="Horde" output="false" extends="Tentacle.Blizzard.Europe.EuropeTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="Tentacle.Blizzard.Europe.HordeTentacle" access="public" output="false">
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