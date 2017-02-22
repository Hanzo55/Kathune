<cfcomponent displayname="PvETentacle" output="false" extends="tentacle.LookingForGuild.NorthAmerica.Horde.HordeTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="tentacle.LookingForGuild.NorthAmerica.Horde.PvETentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.lookingforguild.net/viewsublist.asp?cid=10001&sid=50003&3id=100008') />
		<cfset setSource('LookingForGuild.net -> Players looking for a guild -> North America -> Horde -> PvE') />
		
		<cfreturn super.init( arguments.settings ) />
	</cffunction>
	
	<cffunction name="CreatePostObjectFromQueryRow" returntype="Post" access="public" output="false">
		<cfargument name="dataQuery" type="query" required="true" >
		<cfargument name="row" type="numeric" required="true" />

		<cfset var postObject = super.CreatePostObjectFromQueryRow( arguments.dataQuery, arguments.row ) />

		<cfset postObject.setIsPvP( false ) />
		
		<cfreturn postObject />
	</cffunction>
	
</cfcomponent>