"
Description
--------------------

Page containing all the MDL for seaside extensions examples.
"
Class {
	#name : #MDLExtensionsDemoPage,
	#superclass : #MDLDemoPageWithList,
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLExtensionsDemoPage class >> pageName [
	^ 'Extensions'
]

{ #category : #accessing }
MDLExtensionsDemoPage class >> priority [
	^ 60
]

{ #category : #rendering }
MDLExtensionsDemoPage >> renderPageDescriptionOn: html [
	html
		paragraph: [ html text: 'The last part of Material Design Lite for Seaside is the extensions. Extensions are brushes, components or even Traits helping with the development of web applications.'.
			html strong: 'They are not necessarily described by Material Design.'.
			html text: 'This is the reason they are packages in an "Extensions" package.' ].
	html paragraph: 'They can be, for example, Traits to simplify the use of dialogs, or brushes to render a lateral resizable panel...'
]

{ #category : #accessing }
MDLExtensionsDemoPage >> screens [
	^ MDLExtensionsDemo subclasses
]
