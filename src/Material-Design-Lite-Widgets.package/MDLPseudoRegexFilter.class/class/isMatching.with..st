accessing
isMatching: aString with: aPattern
	^ (self adaptPattern: aPattern) asRegexIgnoringCase matches: aString