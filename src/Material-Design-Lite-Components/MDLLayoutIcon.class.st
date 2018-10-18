"
IDescription
--------------------

I am a brush to create an icon for mdl layouts.
"
Class {
	#name : #MDLLayoutIcon,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutIcon >> initialize [
	super initialize.
	self class: 'mdl-layout-icon'
]
