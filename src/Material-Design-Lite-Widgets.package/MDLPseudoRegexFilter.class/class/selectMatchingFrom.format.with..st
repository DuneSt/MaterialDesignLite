accessing
selectMatchingFrom: aCollection format: aFormatBlock with: aPattern
	| regex |
	regex := (self adaptPattern: aPattern) asRegexIgnoringCase.
	^ aCollection select: [ :each | regex matches: (aFormatBlock value: each) ]