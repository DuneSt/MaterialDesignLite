"
I am a component to display a vertical toolbar.

Description
-------------------

I will stick to a panel and add some buttons with actions to act on a panel.

For now I can only be added to the left of a panel but maybe in the future I can evolve to also stick to the right of a panel.

Example
------------------

		html
			render:
				(MDLVerticalToolbar
					buttons:
						{(MDLFoldButton for: '#my-browser-info' callback: 'setTimeout(function(){console.log(""callback"");for(var i in visus){visus[i].visu.resize().center()}},800)')
						.
						(MDLFoldButton for: '#my-browser-info' callback: 'setTimeout(function(){console.log(""callback"");for(var i in visus){visus[i].visu.resize().center()}},800)')}).
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	buttons:		<aCollection> 	A collection of components to show on the toolbar.
"
Class {
	#name : #MDLVerticalToolbar,
	#superclass : #WAComponent,
	#instVars : [
		'buttons'
	],
	#category : 'Material-Design-Lite-Extensions-Panels'
}

{ #category : #'instance creation' }
MDLVerticalToolbar class >> buttons: aCollection [
	^ self new
		addAllButtons: aCollection;
		yourself
]

{ #category : #adding }
MDLVerticalToolbar >> addAllButtons: aCollection [
	aCollection do: [ :each | self addButton: each ]
]

{ #category : #adding }
MDLVerticalToolbar >> addButton: aButton [
	self buttons add: aButton.
	aButton owner: self
]

{ #category : #accessing }
MDLVerticalToolbar >> buttons [
	^ buttons
]

{ #category : #accessing }
MDLVerticalToolbar >> buttons: anObject [
	buttons := anObject
]

{ #category : #hooks }
MDLVerticalToolbar >> children [
	^ self buttons
]

{ #category : #initialization }
MDLVerticalToolbar >> initialize [
	super initialize.
	self buttons: OrderedCollection new
]

{ #category : #rendering }
MDLVerticalToolbar >> renderContentOn: html [
	html div
		class: 'vertical-toolbar';
		with: [ 
					self buttons
						do: [ :button | 
							html div
								class: 'vertical-toolbar__button';
								with: [ html render: button ] ] ]
]

{ #category : #action }
MDLVerticalToolbar >> resetButtonsSelection [
	self buttons do: [ :each | each isSelected: false ]
]
