accessing
selectMatchingFrom: aCollection format: aFormatBlock with: aPattern
	| regex |
	regex := (self adaptPattern: aPattern) asRegexIgnoringCase.
	^ aCollection select: [ :each | self formatedElement: (aFormatBlock value: each) matches: regex ]