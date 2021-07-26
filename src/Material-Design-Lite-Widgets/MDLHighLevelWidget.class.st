"
I represent an abstract class for high level widgets.

Interesting point is that I have properties through a Dictionary which allow me to add some behaviours. My properties should have a selector as key and an array of parameters as value.
"
Class {
	#name : #MDLHighLevelWidget,
	#superclass : #MDLWidget,
	#instVars : [
		'properties'
	],
	#category : #'Material-Design-Lite-Widgets'
}

{ #category : #accessing }
MDLHighLevelWidget >> addProperties: aDictionary [
	properties addAll: aDictionary
]

{ #category : #actions }
MDLHighLevelWidget >> addPropertiesToBrush: aBrush [
	self properties keysAndValuesDo: [ :aSymbol :arguments | aBrush perform: aSymbol withArguments: arguments ]
]

{ #category : #accessing }
MDLHighLevelWidget >> class: aString [
	| stringToAdd |
	aString isEmptyOrNil ifTrue: [ ^ self ].

	stringToAdd := self
		propertiesAt: #class:
		ifPresent: [ :oldClasses | 
			stringToAdd := String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: oldClasses anyOne;
						space;
						nextPutAll: aString ] ]
		ifAbsent: [ aString ].

	self propertiesAt: #class: put: (Array with: stringToAdd)
]

{ #category : #accessing }
MDLHighLevelWidget >> htmlClass [
	"htmlClass because it can cause problems to have a #class method in objects."

	^ self propertiesAt: #class ifPresent: [ :array | array anyOne ] ifAbsent: [ nil ]
]

{ #category : #accessing }
MDLHighLevelWidget >> id [
	^ self propertiesAt: #id: ifPresent: [ :array | array anyOne ] ifAbsent: [ nil ]
]

{ #category : #accessing }
MDLHighLevelWidget >> id: aString [
	self propertiesAt: #id: put: (Array with: aString)
]

{ #category : #initialization }
MDLHighLevelWidget >> initialize [
	super initialize.
	properties := OrderedDictionary new
]

{ #category : #accessing }
MDLHighLevelWidget >> onClick: anObject [
	self propertiesAt: #onClick: put: (Array with: anObject)
]

{ #category : #accessing }
MDLHighLevelWidget >> properties [
	^ properties
]

{ #category : #accessing }
MDLHighLevelWidget >> propertiesAt: aString [
	^ self properties at: aString
]

{ #category : #accessing }
MDLHighLevelWidget >> propertiesAt: aString ifAbsent: aBlock [
	^ self properties at: aString ifAbsent: aBlock
]

{ #category : #accessing }
MDLHighLevelWidget >> propertiesAt: aString ifPresent: aBlock ifAbsent: anotherBlock [
	^ self properties at: aString ifPresent: aBlock ifAbsent: anotherBlock
]

{ #category : #accessing }
MDLHighLevelWidget >> propertiesAt: aString put: anArray [
	self properties at: aString put: anArray
]

{ #category : #accessing }
MDLHighLevelWidget >> style: aString [
	| stringToAdd |
	aString isEmptyOrNil ifTrue: [ ^ self ].

	stringToAdd := self
		propertiesAt: #style:
		ifPresent: [ :oldStyle | 
			String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: oldStyle anyOne;
						space;
						nextPutAll: aString ] ]
		ifAbsent: [ aString ].

	self propertiesAt: #style: put: {stringToAdd}
]
