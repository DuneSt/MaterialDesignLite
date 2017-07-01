private
labelFor: anObject
	^ self textBlock ifNil: [ anObject asString ] ifNotNil: [ :tb | tb cull: anObject ]