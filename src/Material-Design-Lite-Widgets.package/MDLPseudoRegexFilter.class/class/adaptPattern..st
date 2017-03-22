accessing
adaptPattern: aPattern
	^ String
		streamContents: [ :s | 
			(aPattern includes: $*)
				ifFalse: [ s << '.*' ].
			s << ('.*' join: ($* split: aPattern)).
			(aPattern includes: $*)
				ifFalse: [ s << '.*' ] ]