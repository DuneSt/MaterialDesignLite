rendering
renderIconOf: anItem on: html
	self iconBlock ifNil: [ ^ self ].
	
	self
		assert: (self iconBlock argumentCount between: 1 and: 2)
		description:
			'The icon block should have 1 or 2 arguments only. The first argument should be the item to display. If this is the only parameter the block should return a WAComponent to render. The second optional parameter will be an html canvas if you want to render directly something without passing by a component.'.
	
	self iconBlock argumentCount = 1
		ifTrue: [ html render: (self iconBlock value: anItem) ]
		ifFalse: [ self iconBlock value: anItem value: html ]