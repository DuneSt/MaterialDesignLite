"
I am a nested list filter keeping only elements whose name begins with the pattern passed by the user.
"
Class {
	#name : #MDLBeginsWithFilter,
	#superclass : #MDLAbstractFilter,
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLBeginsWithFilter class >> applySelectMatchingOnQueryCollection: aQueryCollection with: aFormatBlock like: aPattern [

	^ aQueryCollection wrappedQuery
		with: aFormatBlock
		like: aPattern , '%'
]

{ #category : #accessing }
MDLBeginsWithFilter class >> formatedElement: aString matches: aPattern [
	^ aString beginsWith: aPattern
]
