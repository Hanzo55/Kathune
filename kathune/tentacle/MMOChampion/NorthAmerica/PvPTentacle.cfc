<cfcomponent displayname="PvPTentacle" output="false" extends="tentacle.MMOChampion.NorthAmerica.NorthAmericaTentacle">

	<cffunction name="init" returntype="tentacle.MMOChampion.NorthAmerica.PvPTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.mmo-champion.com/forums/258-Guild-Recruitment-US-PvP-Servers') />
		<cfset setSource('MMO-Champion.com -> Guild Recruitment -> US PvP Servers') />
		
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