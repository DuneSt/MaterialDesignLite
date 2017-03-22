accessing
selectMatchingFrom: aCollection format: aFormatBlock with: aPattern
	^ aCollection select: [ :each | (aFormatBlock value: each) asLowercase beginsWith: aPattern asLowercase ]