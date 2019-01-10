"
Description
--------------------

Material design system icons are simple, modern, friendly, and sometimes quirky. Each icon is created using our design guidelines to depict in simple and minimal forms the universal concepts used commonly throughout a UI. Ensuring readability and clarity at both large and small sizes, these icons have been optimized for beautiful display on all common platforms and display resolutions.

"
Class {
	#name : #MDLIcon,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Core'
}

{ #category : #options }
MDLIcon >> chipIcon [
	self beChipDecoration
]

{ #category : #initialization }
MDLIcon >> initialize [
	super initialize.
	self class: 'material-icons'
]

{ #category : #options }
MDLIcon >> listItemAvatar [
	self class: 'mdl-list__item-avatar'
]

{ #category : #options }
MDLIcon >> listItemIcon [
	self class: 'mdl-list__item-icon'
]

{ #category : #accessing }
MDLIcon >> tag [
	^'i'
]

{ #category : #options }
MDLIcon >> toggle [
	self class: 'mdl-icon-toggle__label'
]
