options
pattern: aPattern errorMessage: aString
	"patternsDictionary at: anObject put: aString"

	self pattern: aPattern.
	patternErrorMessage := aString