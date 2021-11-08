"
I am a nested list filter keeping only elements whose name includes  the pattern passed by the user, non case sensitive.
"
Class {
	#name : #MDLInsensitiveSubstringFilter,
	#superclass : #MDLAbstractFilter,
	#category : 'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLInsensitiveSubstringFilter class >> formatedElement: aString matches: aPattern [
	^ aString asLowercase includesSubstring: aPattern asLowercase
]
