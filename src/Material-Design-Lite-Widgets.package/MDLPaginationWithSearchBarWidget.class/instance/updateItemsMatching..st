updating
updateItemsMatching: aString
	aString isEmptyOrNil
		ifTrue: [ self groupsOfItems: items ]
		ifFalse: [ self
				groupsOfItems: (items select: [ :anObject | testingBlock value: anObject value: aString ]) ]