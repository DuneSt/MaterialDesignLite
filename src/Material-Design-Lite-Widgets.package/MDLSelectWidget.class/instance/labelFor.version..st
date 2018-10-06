labelMap - generation
labelFor: anElem version: anInteger
	^ String
		streamContents: [ :s | 
			s nextPutAll: (self labelFor: anElem).
			anInteger = 0
				ifFalse: [ s
						nextPutAll: ' (';
						print: anInteger;
						nextPut: $) ] ]