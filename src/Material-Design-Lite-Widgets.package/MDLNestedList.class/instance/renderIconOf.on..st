rendering
renderIconOf: anItem on: html
	self iconBlock ifNil: [ ^ self ].
	
	html render: (self iconBlock value: anItem)