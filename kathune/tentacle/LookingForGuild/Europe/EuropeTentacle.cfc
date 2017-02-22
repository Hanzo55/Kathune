<cfcomponent displayname="Europe" output="false" extends="tentacle.LookingForGuild.LookingForGuildTentacle">

	<cffunction name="init" returntype="tentacle.LookingForGuild.Europe.EuropeTentacle" access="private" output="false">
		<cfargument name="settings" type="struct" required="true" />

		<cfset setRegion('EU-EN') />
		
		<cfreturn super.init(arguments.settings) />
	</cffunction>
	
</cfcomponent>