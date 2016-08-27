instance creation
content: aBlock actions: aSecondBlock buttonName: aString closeButtonName: aSecondString
	^ (self new content: aBlock actions: aSecondBlock buttonName: aString) 
		closeButtonName: aSecondString;
		yourself