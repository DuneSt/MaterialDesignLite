public
with: aBlock
	removeUrl ifNotNil: [ :url | self attributes at: 'href' put: url ].
	super with: aBlock