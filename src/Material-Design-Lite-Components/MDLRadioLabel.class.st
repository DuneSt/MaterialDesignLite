"
Description
--------------------

I am a brush to create a label for a radio button.

Example
--------------------

	html mdlRadioContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlRadioButton
				beChecked;
				value: '1';
				attributeAt: 'name' put: 'options';
				id: html lastId.
			html mdlRadioLabel: 'First' ]
"
Class {
	#name : #MDLRadioLabel,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLRadioLabel >> initialize [
	super initialize.
	self class: 'mdl-radio__label'
]

{ #category : #accessing }
MDLRadioLabel >> tag [
	^ 'span'
]
