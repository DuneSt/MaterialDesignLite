instance creation
newWith: aHeader
	^ self basicNew
		header: aHeader;
		initialize;
		yourself