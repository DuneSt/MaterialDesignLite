"
I am a nested list filter keeping only elements whose name includes  the pattern passed by the user.
"
Class {
	#name : #MDLSubstringFilter,
	#superclass : #MDLAbstractFilter,
	#category : 'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLSubstringFilter class >> formatedElement: aString matches: aPattern [
	^ aString includesSubstring: aPattern
]
