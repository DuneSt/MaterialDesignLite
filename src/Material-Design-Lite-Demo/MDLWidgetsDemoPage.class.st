"
Description
--------------------

Page containing all the MDL for seaside widgets examples.
"
Class {
	#name : #MDLWidgetsDemoPage,
	#superclass : #MDLDemoPageWithList,
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLWidgetsDemoPage class >> pageName [
	^ 'Widgets'
]

{ #category : #accessing }
MDLWidgetsDemoPage class >> priority [
	^ 40
]

{ #category : #rendering }
MDLWidgetsDemoPage >> renderPageDescriptionOn: html [
	html paragraph: 'The second part of Material Design Lite for Seaside is the Widgets. Widgets are Seaside components with behaviour at the difference of MDL components. They respect Material Design rules and provide to the developers predefined behaviour.'.
	html paragraph: 'An exemple of widget is the nested list already containing features such as dynamic loading of elements, research, sorting...'
]

{ #category : #accessing }
MDLWidgetsDemoPage >> screens [
	^ MDLWidgetDemo subclasses
]
