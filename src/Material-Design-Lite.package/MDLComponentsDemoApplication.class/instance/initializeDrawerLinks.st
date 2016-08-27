initialization
initializeDrawerLinks
	^ screens
		collect: [ :aScreen | 
			MDLNavigationLinkWithIconComponent new
				callback: [ self activeScreen: aScreen ];
				iconUrl: aScreen iconUrl;
				label: aScreen title ]