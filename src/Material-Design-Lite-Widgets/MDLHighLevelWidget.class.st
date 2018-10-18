"
I represent an abstract class for high level widgets.

Interesting point is that I have properties through a Dictionary which allow me to add some behaviours
"
Class {
	#name : #MDLHighLevelWidget,
	#superclass : #MDLWidget,
	#instVars : [
		'properties'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #accessing }
MDLHighLevelWidget >> addProperties: aDictionary [
	properties addAll: aDictionary
]

{ #category : #actions }
MDLHighLevelWidget >> addPropertiesToBrush: aBrush [
	properties
		keysAndValuesDo: [ :aSymbol :property | aBrush perform: aSymbol with: property ]
]

{ #category : #accessing }
MDLHighLevelWidget >> class: aString [
	| stringToAdd |
	aString isEmptyOrNil
		ifTrue: [ ^ self ].
	properties
		at: #class:
		ifPresent: [ :oldClasses | 
			stringToAdd := String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: oldClasses;
						nextPut: Character cr;
						nextPutAll: aString ] ]
		ifAbsent: [ stringToAdd := aString ].
	properties at: #class: put: stringToAdd
]

{ #category : #accessing }
MDLHighLevelWidget >> id [
	^ properties at: #id: ifAbsent: [ nil ]
]

{ #category : #accessing }
MDLHighLevelWidget >> id: aString [
	properties at: #id: put: aString
]

{ #category : #initialization }
MDLHighLevelWidget >> initialize [
	super initialize.
	properties := OrderedDictionary new
]

{ #category : #accessing }
MDLHighLevelWidget >> onClick: anObject [
	self propertiesAt: #onClick: put: anObject
]

{ #category : #accessing }
MDLHighLevelWidget >> properties [
	^ properties
]

{ #category : #accessing }
MDLHighLevelWidget >> propertiesAt: aString put: anObject [
	self properties at: aString put: anObject
]

{ #category : #accessing }
MDLHighLevelWidget >> style: aString [
	| stringToAdd |
	properties
		at: #style:
		ifPresent: [ :oldStyle | 
			stringToAdd := String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: oldStyle;
						nextPut: Character cr;
						nextPutAll: aString ] ]
		ifAbsent: [ stringToAdd := aString ].
	properties at: #style: put: stringToAdd
]
