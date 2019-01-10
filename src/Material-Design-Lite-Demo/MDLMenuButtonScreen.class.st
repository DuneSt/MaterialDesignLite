"
Demo screen for the MDLMenuButtonWidget
"
Class {
	#name : #MDLMenuButtonScreen,
	#superclass : #MDLWidgetDemo,
	#instVars : [
		'selectedUser'
	],
	#category : 'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLMenuButtonScreen class >> description [
	^ 'A widget to create a button that expand to show a menu when clicked'
]

{ #category : #accessing }
MDLMenuButtonScreen class >> icon [
	^ #compmenusPng
]

{ #category : #accessing }
MDLMenuButtonScreen class >> title [
	^ 'Menu Button'
]

{ #category : #sections }
MDLMenuButtonScreen >> iconMenuButton [
	^ OrderedDictionary new
		add: 'Menu Button with block content' -> #renderIconMenuButtonOn:;
		yourself
]

{ #category : #demos }
MDLMenuButtonScreen >> renderIconMenuButtonOn: html [
	html
		render:
			(MDLMenuButtonWidget new
				objectsPossibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann');
				buttonContent: [ :r | r mdlIcon: 'person' ];
				yourself)
]

{ #category : #rendering }
MDLMenuButtonScreen >> renderMenuButtonOn: html [
	html
		render:
			((MDLMenuButtonWidget
				possibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann')
				label: #asString
				action: [ :user | Transcript crShow: (selectedUser := user) ]
				selectedObject: selectedUser
				choosingText: 'Select an user'
				description: 'Choose a user to log into the Transcript')
				sortBlock: [ :a :b | a < b ];
				yourself)
]

{ #category : #rendering }
MDLMenuButtonScreen >> renderScreenContentOn: html [
	self
		render: self textMenuButton on: html;
		render: self iconMenuButton on: html
]

{ #category : #sections }
MDLMenuButtonScreen >> textMenuButton [
	^ OrderedDictionary new
		add: 'Menu Button' -> #renderMenuButtonOn:;
		yourself
]
