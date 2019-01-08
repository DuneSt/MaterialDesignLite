"
Description
--------------------

I am an abstract component. My subclasses represent the main content of the MDLDemo.
"
Class {
	#name : #MDLDemoPage,
	#superclass : #MDLDemoComponent,
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #testing }
MDLDemoPage class >> isAbstract [
	^ self = MDLDemoPage
]

{ #category : #accessing }
MDLDemoPage class >> pageName [
	^ self subclassResponsibility
]

{ #category : #accessing }
MDLDemoPage class >> pagesToDisplay [
	^ (self allSubclasses reject: #isAbstract) sorted: [ :a :b | a priority < b priority ]
]

{ #category : #accessing }
MDLDemoPage class >> pathName [
	"Use to define the URL name"

	^ (self pageName copyWithout: $ ) asLowercase 
]

{ #category : #accessing }
MDLDemoPage class >> priority [
	^ self subclassResponsibility
]

{ #category : #accessing }
MDLDemoPage >> pathName [
	^ self class pathName
]
