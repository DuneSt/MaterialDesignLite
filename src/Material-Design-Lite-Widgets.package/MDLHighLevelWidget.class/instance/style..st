accessing
style: aString
	| stringToAdd |
	properties
		at: #style:
		ifPresent: [ :oldStyle | 
			stringToAdd := String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: oldStyle;
						nextPut: Character cr;
						nextPutAll: aString ] ]
		ifAbsent: [ stringToAdd := aString ].
	properties at: #style: put: stringToAdd