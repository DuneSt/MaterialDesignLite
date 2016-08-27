instance creation
title: aString content: aBlock buttonName: aSecondString
	^ (self content: aBlock buttonName: aSecondString)
		title: aString;
		yourself