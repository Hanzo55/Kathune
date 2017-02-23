<cfcomponent displayname="Alliance" output="false" extends="tentacle.Blizzard.NorthAmerica.NorthAmericaTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="tentacle.Blizzard.NorthAmerica.AllianceTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://forums.worldofwarcraft.com/board.html?forumId=7244843&sid=1&pageNo=1') />
		<cfset setSource('World of Warcraft (English Forums) -> Guild Recruitment -> Alliance') />
		
		<cfreturn super.init(arguments.settings) />
	</cffunction>
	
	<cffunction name="CreatePostObjectFromQueryRow" returntype="Post" access="public" output="false">
		<cfargument name="dataQuery" type="query" required="true" >
		<cfargument name="row" type="numeric" required="true" />

		<cfset var postObject = super.CreatePostObjectFromQueryRow( arguments.dataQuery, arguments.row ) />

		<cfset postObject.setIsAlliance( true ) />
		
		<cfreturn postObject />
	</cffunction>
	
</cfcomponent>