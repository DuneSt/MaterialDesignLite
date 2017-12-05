rendering
renderButtonContentOn: html
	self buttonContent isString
		ifTrue: [ html render: self buttonContent ]
		ifFalse: [ self buttonContent cull: html ]