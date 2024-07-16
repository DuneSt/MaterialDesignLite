"
I am an abstract class implementing the strategy design pattern for rendering the content of a MDLTableWidget.
I declare the interface that strategies rendering the content of a MDLTableWidget must implement.

I hold a reference to the instance of MDLTableWidget using myself in my #tableWidget.
"
Class {
	#name : #MDLTableContentDisplayStrategy,
	#superclass : #Object,
	#instVars : [
		'tableWidget'
	],
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #rendering }
MDLTableContentDisplayStrategy >> renderContentOn: html [
	self subclassResponsibility
]

{ #category : #rendering }
MDLTableContentDisplayStrategy >> renderFooterOn: html [
	self subclassResponsibility
]

{ #category : #accessing }
MDLTableContentDisplayStrategy >> tableWidget [
	^ tableWidget
]

{ #category : #accessing }
MDLTableContentDisplayStrategy >> tableWidget: anObject [
	tableWidget := anObject
]
