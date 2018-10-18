"
Description
--------------------

I am a brush to create a checkbox label

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
	#name : #MDLCheckboxLabel,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLCheckboxLabel >> initialize [
	super initialize.
	self class: 'mdl-checkbox__label'
]

{ #category : #accessing }
MDLCheckboxLabel >> tag [ 
	^ 'span'
]
