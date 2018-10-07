printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $[.
	element printOn: aStream.
	aStream nextPut: $]