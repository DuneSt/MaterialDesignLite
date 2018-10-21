"
Description
--------------------

This class is an helper to build new applications.
	
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	applicationName:		<aString>	 	The name of the application. Currently unused.
	colors:					<aString>		Name of the primary and accent color of the application to get the right css. Example: 'indigo-pink'.
	screens:					<aCollection>	The different screens of the application.

"
Class {
	#name : #MDLApplication,
	#superclass : #WAComponent,
	#instVars : [
		'screens',
		'colors'
	],
	#category : #'Material-Design-Lite-Core'
}

{ #category : #testing }
MDLApplication class >> canBeRoot [
	^ true
]

{ #category : #'instance creation' }
MDLApplication class >> registerToDeployment: aName [
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].
	^ (WAAdmin register: self asApplicationAt: aName)
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		yourself
]

{ #category : #'instance creation' }
MDLApplication class >> registerToDevelopment: aName [
	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults addParent: class instance ].
	^ (WAAdmin register: self asApplicationAt: aName)
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		yourself
]

{ #category : #'adding/removing' }
MDLApplication >> addScreen: aScreen [
	^ self screens add: aScreen 
]

{ #category : #accessing }
MDLApplication >> colors [
	^ colors
]

{ #category : #accessing }
MDLApplication >> colors: anObject [
	colors := anObject
]

{ #category : #initialization }
MDLApplication >> initialize [
	super initialize.
	screens := OrderedCollection new.
	colors := 'indigo-pink'
]

{ #category : #accessing }
MDLApplication >> primaryColor: anMDLColor secondaryColor: anotherMDLColor [
	^ self colors: anMDLColor tint, '-', anotherMDLColor tint
]

{ #category : #'adding/removing' }
MDLApplication >> removeScreen: aScreen [
	^ self screens remove: aScreen 
]

{ #category : #rendering }
MDLApplication >> renderContentOn: html [
	html heading level3; with: 'Put your content in screens and render them'
]

{ #category : #accessing }
MDLApplication >> screens [
	^ screens
]

{ #category : #accessing }
MDLApplication >> screens: anObject [
	screens := anObject
]

{ #category : #accessing }
MDLApplication >> style [
	^ '
html > body {
	font-family: "Roboto" , "Helvetica" , "Arial" , "sans-serif" ;
}

.mdl-layout__container {
		position: static;
	}
'
]

{ #category : #updating }
MDLApplication >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.' , self colors , '.min.css')
]
