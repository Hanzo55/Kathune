<cfcomponent displayname="NorthAmerica" output="false" extends="kathune.tentacle.MMOChampion.MMOChampionTentacle">

	<cffunction name="init" returntype="kathune.tentacle.MMOChampion.NorthAmerica.NorthAmericaTentacle" access="private" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setRegion( 'US' ) />
		
		<cfreturn super.init( arguments.settings ) />
	</cffunction>
	
</cfcomponent>