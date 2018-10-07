accessing
adaptPattern: aPattern
	^ String
		streamContents: [ :s | 
			(aPattern includes: $*)
				ifFalse: [ s nextPutAll: '.*' ].
			s nextPutAll: ('.*' join: ($* split: aPattern)).
			(aPattern includes: $*)
				ifFalse: [ s nextPutAll: '.*' ] ]