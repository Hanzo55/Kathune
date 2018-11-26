<cfcomponent displayname="Blizzard" output="false" extends="KathuneTentacle">

	<cffunction name="init" returntype="tentacle.Blizzard.BlizzardTentacle" access="private" output="false">
		<cfargument name="settings" type="struct" required="true" />
		
		<!--- this is an abstract base class which contains shared parsing rules for blizzard-forums in general. should not be instanced. --->
		
		<!--- the hook is the marker (primary key for you nerds) that indicates what makes each thread unique --->
		<cfset setHook('t')>
		
	<!--- 		<cfset setLinkRegularExpression('<a class = "ForumTopic-timestamp--lastPost" href="\/forums\/en\/wow\/topic\/([0-9]+)[^"]+"\s+data-toggle="tooltip" data-tooltip-content="Last Post">\s+.+?\s+<\/a>[^<]+<\/span>\s+<span class="ForumTopic-title"[^>]+>\s+(.+?)\s+<\/span>') />
			<cfset setTitleRegularExpression('<a href="[^"]+" class="Breadcrumb-content is-active">(.+?)<\/a>') />
			<cfset setBodyRegularExpression('<div class="TopicPost-bodyContent" data-topic-post-body-content="true">(.+?)<\/div>') />
 --->

 		<!--- the Link (parsed off the summary or getForumURL() value) regex must return 2 backreferences: the first is the hook's value, the second is the title of the thread --->
		<cfset setLinkRegularExpression("<meta itemprop='position' content='[0-9]+'>\s+<meta itemprop='url' content='#getThreadUrl()#\/#getHook()#\/(.+?)'>\s+<a href='.+?'>\s+<span itemprop='name'>(.+?)<\/span>\s+<\/a>") />

		<!--- the Title returns 1 backreference: the title of the post --->
		<cfset setTitleRegularExpression('<meta property="og:title" content="([^"]+)" \/>') />

		<!--- the Body returns 1 backreference: the body of the post --->
		<!--- <cfset setBodyRegularExpression("<div class='post' itemprop='articleBody'>((.|\n|\s+)+?)<\/div>") /> --->
		<cfset setBodyRegularExpression("<div class='post' itemprop='articleBody'>(.+?)<\/div>") />

		<cfreturn super.init(arguments.settings) />
	</cffunction>

	<cffunction name="getThreadByHook" returntype="string" access="public" output="false">
		<cfargument name="hook" type="string" required="true" />
		
		<cfreturn getThreadURL() & '/' & getHook() & '/' & arguments.hook />
	</cffunction>
	
</cfcomponent>





