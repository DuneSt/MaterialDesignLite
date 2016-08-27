initialization
initializeDrawerLinks
	^ screens
		collect: [ :aScreen | 
			MDLNavigationLinkWithIconComponent new
				callback: [ self activeScreen: aScreen ];
				icon: aScreen icon;
				label: aScreen title ]