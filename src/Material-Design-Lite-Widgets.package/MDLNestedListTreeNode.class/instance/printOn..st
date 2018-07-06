printing
printOn: aStream
	super printOn: aStream.
	aStream << $[.
	element printOn: aStream.
	aStream << $]