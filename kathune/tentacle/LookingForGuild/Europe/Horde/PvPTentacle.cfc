<cfcomponent displayname="PvPTentacle" output="false" extends="tentacle.LookingForGuild.Europe.Horde.HordeTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="tentacle.LookingForGuild.Europe.Horde.PvPTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.lookingforguild.net/viewsublist.asp?cid=10003&sid=50006&3id=100029') />
		<cfset setSource('LookingForGuild.net -> Players looking for a guild -> Europe -> Horde -> PvP') />
		
		<cfreturn super.init( arguments.settings ) />
	</cffunction>
	
	<cffunction name="CreatePostObjectFromQueryRow" returntype="Post" access="public" output="false">
		<cfargument name="dataQuery" type="query" required="true" >
		<cfargument name="row" type="numeric" required="true" />

		<cfset var postObject = super.CreatePostObjectFromQueryRow( arguments.dataQuery, arguments.row ) />

		<cfset postObject.setIsPvP( true ) />
		
		<cfreturn postObject />
	</cffunction>
	
</cfcomponent>