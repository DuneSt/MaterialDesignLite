"
I am an abstract class managing the filtering of a nested list. I act in a design pattern strategy.

My subclasses should be able to filter a MDLNestedList.

Public API and Key Messages

- class>>#isMatching: aString with: aPattern		Return a boolean. True if the pattern matches the string, else false.
"
Class {
	#name : #MDLAbstractFilter,
	#superclass : #Object,
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #accessing }
MDLAbstractFilter class >> formatedElement: aString matches: aPattern [
	^ self subclassResponsibility
]

{ #category : #testing }
MDLAbstractFilter class >> isAbstract [
	^ self = MDLAbstractFilter
]

{ #category : #accessing }
MDLAbstractFilter class >> selectMatchingFrom: aCollection format: aFormatBlock with: aPattern [
	"I take as parameter a collection of elements to match, a block to get the readable format of the element and a pattern and I should return a collection of elements matching the pattern in their readable format."

	^ aCollection select: [ :each | self formatedElement: (aFormatBlock value: each) matches: aPattern ]
]
