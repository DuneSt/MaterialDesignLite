instance creation
content: aBlock actions: aSecondBlock closeButtonName: aString 
	^ (self content: aBlock buttonName: aString)
		closeButtonName: aSecondBlock;
		yourself