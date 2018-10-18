"
Screen to render MDLSelectWidget examples
"
Class {
	#name : #MDLSelectScreen,
	#superclass : #MDLWidgetDemo,
	#instVars : [
		'selectedEntity'
	],
	#category : 'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLSelectScreen class >> description [
	^ 'A widget to emulate a select input in MDL style.'
]

{ #category : #accessing }
MDLSelectScreen class >> icon [
	^ #compmenusPng
]

{ #category : #accessing }
MDLSelectScreen class >> title [
	^ 'Select'
]

{ #category : #demos }
MDLSelectScreen >> renderAutoSubmitSelectOn: html [
	html
		form:
			((MDLSelectWidget
				possibilities: #(1 2 3 4 5 5)
				inputLabel: 'Select Your Number'
				labelBlock: [ :number | 
					number = 5
						ifTrue: [ '0' ]
						ifFalse: [ (number - 1) greaseString ] ]
				callback: [ :input | selectedEntity := input ]
				selectedObject: selectedEntity)
				beAutoSubmit;
				yourself).
	selectedEntity ifNotNil: [ :entity |  html div mdlTextColorPrimary; with: 'Selected: ' , entity asString ]
]

{ #category : #rendering }
MDLSelectScreen >> renderScreenContentOn: html [
	self render: self select on: html
]

{ #category : #demos }
MDLSelectScreen >> renderSelectOn: html [
	html
		form: [ 
			html
				render:
					((MDLSelectWidget
						possibilities: #(1 2 3 4 5 5)
						inputLabel: 'Select Your Number'
						labelBlock: [ :number | 
							number = 5
								ifTrue: [ '0' ]
								ifFalse: [ (number - 1) greaseString ] ]
						callback: [ :input | 
							Transcript
								show: input;
								cr ]
						selectedObject: 3
						tooltip: 'description'
						sortBlock: [ :a :b | a <= b ])
						entryTooltip: [ :number | 'Choose number: ' , number asString ];
						yourself).
			html break.
			html mdlButton
				accentColor;
				raised;
				beSubmit;
				with: 'Submit' ]
]

{ #category : #sections }
MDLSelectScreen >> select [
	^ OrderedDictionary new
		add: 'Select Widget' -> #renderSelectOn:;
		add: 'Auto submit select' -> #renderAutoSubmitSelectOn:;
		yourself
]
