"
Description
--------------------

I am a brush to create a label for a toggle label.

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
	#name : #MDLIconToggleLabel,
	#superclass : #WATagBrush,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #deprecation }
MDLIconToggleLabel class >> isDeprecated [
	"Use MDLIcon with the #toggle option instead."
	
	^ true
]

{ #category : #initialization }
MDLIconToggleLabel >> initialize [
	super initialize. 
	self class: 'mdl-icon-toggle__label material-icons'
]

{ #category : #accessing }
MDLIconToggleLabel >> tag [
	^ 'span'
]
