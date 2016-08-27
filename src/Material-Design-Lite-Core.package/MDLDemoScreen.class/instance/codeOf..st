accessing
codeOf: aBlock
	"I return the code inside a block. The block should have on parameter called 'html' and should be formated.' "

	self flag: #todo.	"This should be used everywhere in the demo"
	^ aBlock asString copyFrom: 11 to: aBlock asString size - 2