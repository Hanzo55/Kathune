<cfcomponent displayname="Alliance" output="false" extends="tentacle.LookingForGuild.NorthAmerica.NorthAmericaTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="tentacle.LookingForGuild.NorthAmerica.Horde.HordeTentacle" access="private" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
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