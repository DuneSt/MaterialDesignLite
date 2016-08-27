creation
possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText description: aDescriptionValuable 
	^ self new
		choosingText: aText;
		textBlock: aLabelBlock;
		selectedObject: nil;
		description: aDescriptionValuable;
		action: anAction;
		objectsPossibilities: aCollectionOfObjects;
		yourself