<cfcomponent displayname="NorthAmerica" output="false" extends="tentacle.LookingForGuild.LookingForGuildTentacle">

	<cffunction name="init" returntype="tentacle.LookingForGuild.NorthAmerica.NorthAmericaTentacle" access="private" output="false">
		<cfargument name="settings" type="struct" required="true" />

		<cfset setRegion('US') />
		
		<cfreturn super.init(arguments.settings) />
	</cffunction>
	
</cfcomponent>