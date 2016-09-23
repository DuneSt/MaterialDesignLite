accessing
labelFor: anObject
	^ self labelBlock ifNil: [ anObject asString ] ifNotNil: [ :blk | blk value: anObject ]