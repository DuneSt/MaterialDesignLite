rendering
renderRightIconOf: anItem on: html
	self rightIconBlock ifNil: [ ^ self ].
	
	self
		assert: (self rightIconBlock argumentCount between: 1 and: 2)
		description:
			'The icon block should have 1 or 2 arguments only. The first argument should be the item to display. If this is the only parameter the block should return a WAComponent to render. The second optional parameter will be an html canvas if you want to render directly something without passing by a component.'.
	
	self rightIconBlock argumentCount = 1
		ifTrue: [ html render: (self rightIconBlock value: anItem) ]
		ifFalse: [ self rightIconBlock value: anItem value: html ]