"
I am a nested list filter keeping only elements whose name begins with the pattern passed by the user in an insensitive way.
"
Class {
	#name : #MDLInsensitiveBeginsWithFilter,
	#superclass : #MDLAbstractFilter,
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLInsensitiveBeginsWithFilter class >> applySelectMatchingOnQueryCollection: aQueryCollection with: aFormatBlock like: aPattern [
	^ aQueryCollection wrappedQuery
		with: aFormatBlock
		ilike: aPattern , '%'
]

{ #category : #accessing }
MDLInsensitiveBeginsWithFilter class >> formatedElement: aString matches: aPattern [
	^ aString asLowercase beginsWith: aPattern asLowercase
]
