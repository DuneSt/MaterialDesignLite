labelMap - generation
labelFor: anElem version: anInteger
	^ String
		streamContents: [ :s | 
			s << (self labelFor: anElem).
			anInteger = 0
				ifFalse: [ 
					s << ' ('.
					s << anInteger.
					s << $) ] ]