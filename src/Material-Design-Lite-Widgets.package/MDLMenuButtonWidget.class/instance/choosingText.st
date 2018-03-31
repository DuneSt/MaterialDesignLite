accessing
choosingText
	"This method is to keep backward compatibility with old API. This might be suppress with the next major release."

	self buttonContent isString ifTrue: [ ^ self buttonContent ].
	
	self error: 'This button was not configured to render a string but was configured with a block'