<cfcomponent displayname="RPTentacle" output="false" extends="tentacle.LookingForGuild.NorthAmerica.Alliance.AllianceTentacle" implements="interface.ITentacle">

	<cffunction name="init" returntype="tentacle.LookingForGuild.NorthAmerica.Alliance.RPTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.lookingforguild.net/viewsublist.asp?cid=10001&sid=50002&3id=100014') />
		<cfset setSource('LookingForGuild.net -> Players looking for a guild -> North America -> Alliance -> RP') />
		
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