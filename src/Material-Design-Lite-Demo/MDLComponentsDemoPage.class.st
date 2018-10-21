"
Description
--------------------

Page containing all the MDL for seaside components examples.
"
Class {
	#name : #MDLComponentsDemoPage,
	#superclass : #MDLDemoPageWithList,
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLComponentsDemoPage class >> pageName [
	^ 'Components'
]

{ #category : #accessing }
MDLComponentsDemoPage class >> priority [
	^ 30
]

{ #category : #rendering }
MDLComponentsDemoPage >> renderPageDescriptionOn: html [
	html
		paragraph:
			'The first part of Material Design Lite for Seaside is the components. The MDL components are created with CSS, JavaScript, and HTML. You can use the components to construct web pages and web apps that are attractive, consistent, and functional. Pages developed with MDL will adhere to modern web design principles like browser portability, device independence, and graceful degradation. Most of them are based on Google''s MDL implementation and provides a binding for Seaside.'.
	html paragraph: 'The components are made available in the form of Seaside''s brushes.'
]

{ #category : #accessing }
MDLComponentsDemoPage >> screens [
	^ MDLComponentDemo subclasses
]
