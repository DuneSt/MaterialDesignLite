updating
updateItemsMatching: aString
	self items: (items select: [ :anObject | testingBlock value: anObject value: aString ])