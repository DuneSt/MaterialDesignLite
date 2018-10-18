"
Description
--------------------

I am a brush to create MDL chekboxes.

Example
--------------------

	html mdlCheckboxContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlCheckbox
				value: true;
				id: html lastId.
			html mdlCheckboxLabel: 'Checkbox' ]
"
Class {
	#name : #MDLCheckbox,
	#superclass : #WACheckboxTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLCheckbox >> initialize [
	super initialize.
	self class: 'mdl-checkbox__input'
]
