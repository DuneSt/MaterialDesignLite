adding
addTabNamed: aString content: anObject
	"Dictionary will be used to set id"

	tabs
		at: aString
		put:
			(Dictionary new
				at: #object put: anObject;
				yourself)