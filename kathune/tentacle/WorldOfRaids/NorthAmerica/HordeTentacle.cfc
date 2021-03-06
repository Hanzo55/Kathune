<cfcomponent displayname="Horde" output="false" extends="tentacle.WorldOfRaids.NorthAmerica.NorthAmericaTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="Tentacle.WorldOfRaids.NorthAmerica.HordeTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.worldofraids.com/forums/forumdisplay.php?f=29') />
		<cfset setSource('World of Raids Forums -> US-Horde') />
		
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