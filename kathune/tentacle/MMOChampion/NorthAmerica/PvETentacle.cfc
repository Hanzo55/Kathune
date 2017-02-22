<cfcomponent displayname="PvETentacle" output="false" extends="kathune.tentacle.MMOChampion.NorthAmerica.NorthAmericaTentacle">

	<cffunction name="init" returntype="kathune.tentacle.MMOChampion.NorthAmerica.PvETentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.mmo-champion.com/forums/259-Guild-Recruitment-US-PvE-Servers') />
		<cfset setSource('MMO-Champion.com -> Guild Recruitment -> US PvE Servers') />
		
		<cfreturn super.init( arguments.settings ) />
	</cffunction>
	
	<cffunction name="CreatePostObjectFromQueryRow" returntype="Post" access="public" output="false">
		<cfargument name="dataQuery" type="query" required="true" >
		<cfargument name="row" type="numeric" required="true" />

		<cfset var postObject = super.CreatePostObjectFromQueryRow( arguments.dataQuery, arguments.row ) />

		<cfset postObject.setIsPvE( true ) />
		
		<cfreturn postObject />
	</cffunction>
	
</cfcomponent>