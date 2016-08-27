accessing
class: aString
	| stringToAdd |
	properties
		at: #class:
		ifPresent: [ :oldClasses | 
			stringToAdd := String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: oldClasses;
						nextPut: Character cr;
						nextPutAll: aString ] ]
		ifAbsent: [ stringToAdd := aString ].
	properties at: #class: put: stringToAdd