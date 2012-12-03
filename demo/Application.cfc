<cfcomponent output="false">

    <!--- Application name, should be unique --->
    <cfset this.name = "KathuneApp">

    <!--- How long application vars persist --->
    <cfset this.applicationTimeout = CreateTimeSpan( 0, 8, 0, 0 ) />

    <!--- Dev or Prod? --->
    <cfset this.isDev = false />

    <!--- Run when application starts up --->
    <cffunction name="onApplicationStart" returnType="boolean" output="false">

        <cfif ( NOT this.isDev AND NOT IsDefined( 'application.kathune' ) ) OR ( IsDefined( 'url.reinit' ) )>
            <cflock name="AppInit" timeout="30" type="exclusive">
                <cfset application.kathune = CreateObject( 'component','hanzo.cf.Kathune.Kathune' ).init( '/config.xml' ) />
            </cflock>
            <cfif IsDefined( 'url.reinit' )>
                <cfobjectcache action="clear" />
            </cfif>
        </cfif>

        <cfreturn true />
    </cffunction>

    <!--- Run before the request is processed --->
    <cffunction name="onRequestStart" returnType="boolean" output="false">
        <cfargument name="thePage" type="string" required="true" />

        <cfif IsDefined( 'url.reinit' )>
            <cfset onApplicationStart() />
        </cfif>

        <cfset request.isDev = this.isDev />

        <cfif this.isDev>
            <cfset request.kathune = CreateObject( 'component','hanzo.cf.Kathune.Kathune' ).init( '/config.xml' ) />
            <cfobjectcache action="clear" />
        <cfelse>
            <cflock name="AppRead" timeout="15" type="readonly">
                <cfset request.kathune = application.kathune />
            </cflock>
        </cfif>

        <cfreturn true />
    </cffunction>

</cfcomponent>