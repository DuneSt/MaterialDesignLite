"
Description
--------------------

I am a brush to create a MDL radio button.

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
	#name : #MDLRadioButton,
	#superclass : #WARadioButtonTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLRadioButton >> initialize [
	super initialize.
	self class: 'mdl-radio__button'
]
