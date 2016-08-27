initialization
initializeDrawerLinksFrom: aScreenCollection
	^ aScreenCollection
		collect: [ :aScreen | 
			MDLNavigationLinkWithIconComponent new
				callback: [ self activeScreen: aScreen ];
				iconUrl: aScreen iconUrl;
				label: aScreen title ]