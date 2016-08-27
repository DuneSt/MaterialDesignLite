printing
printOn: aStream
	aStream
		nextPutAll: self class;
		nextPut: $(;
		nextPutAll: self tint;
		nextPutAll: ' #';
		nextPutAll: self code;
		nextPut: $)