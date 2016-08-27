printing
storeOn: aStream
	aStream
		nextPutAll: '(' , self class name;
		nextPutAll: ' tint: '; print: (self tint);
		nextPutAll: ' code: '; print: (self code);
		nextPutAll: ')'.
