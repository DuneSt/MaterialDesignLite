"
I am a nested list filter keeping only elements whose name includes the pattern of the user. BUT! If the pattern contains a ""*"" or a ""#"", I uses a regex fiter.
"
Class {
	#name : #MDLPseudoRegexFilter,
	#superclass : #MDLAbstractFilter,
	#category : 'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLPseudoRegexFilter class >> adaptPattern: aPattern [
	^ String
		streamContents: [ :s | 
			(aPattern includes: $*)
				ifFalse: [ s nextPutAll: '.*' ].
			s nextPutAll: ('.*' join: ($* split: aPattern)).
			(aPattern includes: $*)
				ifFalse: [ s nextPutAll: '.*' ] ]
]

{ #category : #accessing }
MDLPseudoRegexFilter class >> formatedElement: aString matches: aRegex [
	^ aRegex matches: aString
]

{ #category : #accessing }
MDLPseudoRegexFilter class >> selectMatchingFrom: aCollection format: aFormatBlock with: aPattern [
	| regex |
	regex := (self adaptPattern: aPattern) asRegexIgnoringCase.
	^ aCollection select: [ :each | self formatedElement: (aFormatBlock value: each) matches: regex ]
]
