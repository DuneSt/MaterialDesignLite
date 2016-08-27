instance creation
labeled: aString callback: aBlock floatingLabel: aBoolean expandable: aBoolean2
	^ self new
		label: aString;
		callback: aBlock;
		isFloatingLabel: aBoolean;
		isExpandable: aBoolean2;
		yourself