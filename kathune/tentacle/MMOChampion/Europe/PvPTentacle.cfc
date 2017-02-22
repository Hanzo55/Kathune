<cfcomponent displayname="PvPTentacle" output="false" extends="kathune.tentacle.MMOChampion.Europe.EuropeTentacle">

	<cffunction name="init" returntype="kathune.tentacle.MMOChampion.Europe.PvPTentacle" access="public" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setForumURL('http://www.mmo-champion.com/forums/260-Guild-Recruitment-EU-English-PvP-Servers') />
		<cfset setSource('MMO-Champion.com -> Guild Recruitment -> EU-English PvP Servers') />
		
		<cfreturn super.init(arguments.settings) />
	</cffunction>
	
	<cffunction name="CreatePostObjectFromQueryRow" returntype="Post" access="public" output="false">
		<cfargument name="dataQuery" type="query" required="true" >
		<cfargument name="row" type="numeric" required="true" />

		<cfset var postObject = super.CreatePostObjectFromQueryRow( arguments.dataQuery, arguments.row ) />

		<cfset postObject.setIsPvP( true ) />
		
		<cfreturn postObject />
	</cffunction>
	
</cfcomponent>