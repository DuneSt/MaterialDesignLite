instance creation
possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject tooltip: aString sortBlock: aSortBlock
	^ self new
		choosingText: aLabel;
		labelBlock: aLabelBlock;
		callback: aBlock;
		selectedObject: anObject;
		possibilities: aColl;
		description: aString;
		sortBlock: aSortBlock;
		yourself