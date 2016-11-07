component {

	public void function configure( required struct config ) {
		var settings = arguments.config.settings ?: {};

		settings.features.samlSsoProvider = { enabled=false, siteTemplates=[ "*" ], widgets=[] };
		settings.features.samlSsoConsumer = { enabled=false, siteTemplates=[ "*" ], widgets=[] };

		settings.adminPermissions.saml2 = {
			  provider = [ "navigate", "manage" ]
			, consumer = [ "navigate", "manage" ]
		};
	}
}