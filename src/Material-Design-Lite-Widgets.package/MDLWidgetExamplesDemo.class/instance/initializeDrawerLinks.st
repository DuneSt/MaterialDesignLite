initialization
initializeDrawerLinks
	^ screens
		collect: [ :aScreen | 
			MDLNavigationLinkWithIconComponent new
				callback: [ activeScreen := aScreen ];
				iconUrl: aScreen iconUrl;
				label: aScreen title ]