as yet unclassified
printOn: aStream
	super printOn: aStream.
	aStream << $[.
	element printOn: aStream.
	aStream << $]