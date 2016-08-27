accessing
callback: aOneArgBlock
	aOneArgBlock argumentCount ~= 1
		ifTrue: [ ^ self error: '1 argument expected' ].
	callback := aOneArgBlock