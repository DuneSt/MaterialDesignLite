creation
possibilities: aCollectionOfObjects label: aLabelBlock action: anAction selectedObject: anObjectOrNil choosingText: aText description: aDescriptionValuable 
	^ self new
		choosingText: aText;
		textBlock: aLabelBlock;
		selectedObject: anObjectOrNil;
		description: aDescriptionValuable;
		action: anAction;
		objectsPossibilities: aCollectionOfObjects;
		yourself