instance creation
content: aBlock actions: aSecondBlock buttonName: aString
	^ (self content: aBlock buttonName: aString)
		actions: aSecondBlock;
		yourself