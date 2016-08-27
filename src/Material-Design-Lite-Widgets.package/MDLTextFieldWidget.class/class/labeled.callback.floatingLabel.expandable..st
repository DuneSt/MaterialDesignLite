instance creation
labeled: aString callback: aBlock floatingLabel: aBoolean expandable: aBoolean2
	^ self new
		label: aString;
		callback: aBlock;
		floatingLabelIf: aBoolean;
		expandableIf: aBoolean2;
		yourself