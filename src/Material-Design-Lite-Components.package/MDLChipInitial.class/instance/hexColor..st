options
hexColor: aString
	self
		style:
			(String
				streamContents: [ :s | 
					s nextPutAll: 'background-color: '.
					aString first = $#
						ifFalse: [ s nextPut: $# ].
					s nextPutAll: aString ])