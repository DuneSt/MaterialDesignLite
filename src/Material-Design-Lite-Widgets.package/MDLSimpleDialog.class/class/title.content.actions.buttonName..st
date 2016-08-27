instance creation
title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString
	^ (self content: aBlock actions: aSecondBlock buttonName: aSecondString)
		title: aString;
		yourself