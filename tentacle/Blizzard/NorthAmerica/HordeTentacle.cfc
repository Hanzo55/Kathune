<cfcomponent displayname="Horde" output="false" extends="Tentacle.Blizzard.NorthAmerica.NorthAmericaTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="Tentacle.Blizzard.NorthAmerica.HordeTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://forums.worldofwarcraft.com/board.html?forumId=7244844&sid=1&pageNo=1') />
		<cfset setSource('World of Warcraft (English Forums) -> Guild Recruitment -> Horde') />
		
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