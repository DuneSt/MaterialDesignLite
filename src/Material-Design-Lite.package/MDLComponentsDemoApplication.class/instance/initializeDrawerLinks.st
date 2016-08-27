initialization
initializeDrawerLinks
	|dico |
	dico := Dictionary new.
	self defaultScreens do: [ :aScreen | dico at: aScreen title put: [ self activeScreen: aScreen ] ].
	^ Array with: dico