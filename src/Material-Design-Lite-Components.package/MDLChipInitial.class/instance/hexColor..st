options
hexColor: aString
	self
		style:
			(String
				streamContents: [ :s | 
					s << 'background-color: '.
					(aString first = $#)
						ifFalse: [ s << $# ].
					s << aString ])