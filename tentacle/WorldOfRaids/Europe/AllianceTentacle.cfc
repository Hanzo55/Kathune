<cfcomponent displayname="Alliance" output="false" extends="tentacle.WorldOfRaids.Europe.EuropeTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="tentacle.WorldOfRaids.Europe.AllianceTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.worldofraids.com/forums/forumdisplay.php?f=30') />
		<cfset setSource('World of Raids Forums -> EN-Alliance') />
		
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