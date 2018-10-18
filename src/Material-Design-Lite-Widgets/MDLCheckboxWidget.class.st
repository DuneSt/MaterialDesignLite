"
Widget for checkbox
"
Class {
	#name : #MDLCheckboxWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'label',
		'checkboxProperties',
		'rippleEffect',
		'labelOnRight',
		'checkbox'
	],
	#category : 'Material-Design-Lite-Widgets-Form'
}

{ #category : #deprecation }
MDLCheckboxWidget class >> isDeprecated [
	"This widget is as hard to use than checkboxes brushes and it lacks a lot of the API. This will be removed in the v2."
	
	^ true
]

{ #category : #adding }
MDLCheckboxWidget >> addCheckboxPropertiesToBrush: aBrush [
	checkboxProperties
		keysAndValuesDo: [ :key :values | aBrush perform: key withArguments: values ]
]

{ #category : #callbacks }
MDLCheckboxWidget >> callback: aBlock [
	checkboxProperties at: #callback: put: {aBlock}
]

{ #category : #initialization }
MDLCheckboxWidget >> initialize [
	super initialize.
	checkboxProperties := OrderedDictionary new.
	rippleEffect := false
]

{ #category : #attributes }
MDLCheckboxWidget >> onTrue: trueBlock onFalse: falseBlock [
	checkboxProperties
		at: #onTrue:onFalse
		put:
			{trueBlock.
			falseBlock}
]

{ #category : #rendering }
MDLCheckboxWidget >> renderContentOn: html [
	html mdlCheckboxContainer
		rippleEffectIf: rippleEffect;
		with: [ checkbox := html mdlCheckbox.
			self addCheckboxPropertiesToBrush: checkbox.
			html mdlCheckboxLabel: label ]
]

{ #category : #accessing }
MDLCheckboxWidget >> rippleEffect [
	rippleEffect := true
]

{ #category : #accessing }
MDLCheckboxWidget >> value: aBoolean [
	checkboxProperties at: #value: put: {aBoolean}
]
