"
Description
--------------------

An icon-toggle consists of a user defined icon that indicates, by visual highlighting, a binary condition that will be set or unset when the user clicks or touches it. Like checkboxes, icon-toggles may appear individually or in groups, and can be selected and deselected individually.

Example
--------------------

	html mdlIconToggleContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlIconToggle
				value: true;
				id: html lastId.
			html mdlIconToggleLabel: 'format_bold' ]
"
Class {
	#name : #MDLIconToggle,
	#superclass : #WACheckboxTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLIconToggle >> initialize [
	super initialize.
	self class: 'mdl-icon-toggle__input'
]
