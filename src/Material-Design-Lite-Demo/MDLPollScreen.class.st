"
Screen to render MDLPollWidget examples
"
Class {
	#name : #MDLPollScreen,
	#superclass : #MDLWidgetDemo,
	#category : 'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLPollScreen class >> description [
	^ 'A simple poll widget.'
]

{ #category : #accessing }
MDLPollScreen class >> icon [
	^ #comppollPng
]

{ #category : #accessing }
MDLPollScreen class >> title [
	^ 'Poll'
]

{ #category : #sections }
MDLPollScreen >> poll [
	^ OrderedDictionary new
		add: 'Poll Widget' -> #renderPollOn:;
		yourself
]

{ #category : #demos }
MDLPollScreen >> renderPollOn: html [
	html div
		style: 'width: 100px;';
		with: MDLPollWidget new
]

{ #category : #rendering }
MDLPollScreen >> renderScreenContentOn: html [
	self render: self poll on: html
]
