<cfcomponent displayname="Europe" output="false" extends="tentacle.MMOChampion.MMOChampionTentacle">

	<cffunction name="init" returntype="tentacle.MMOChampion.Europe.EuropeTentacle" access="private" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<cfset setRegion( 'EU-EN' ) />

		<cfreturn super.init( arguments.settings ) />
	</cffunction>
	
</cfcomponent>