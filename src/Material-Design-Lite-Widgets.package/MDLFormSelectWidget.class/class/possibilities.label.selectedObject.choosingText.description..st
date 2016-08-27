instance creation
possibilities: aCollectionOfObjects label: aLabelBlock selectedObject: anObjectOrNil choosingText: aText description: aDescriptionValuable 
	^ self new
		choosingText: aText;
		textBlock: aLabelBlock;
		selectedObject: anObjectOrNil;
		description: aDescriptionValuable;
		objectsPossibilities: aCollectionOfObjects;
		yourself