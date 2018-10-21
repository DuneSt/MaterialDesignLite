"
Description
--------------------

I am a brush to create a MDL tooltip.

Example
--------------------

	html mdlIcon
		id: html nextId;
		with: 'cloud_upload'.
	html mdlTooltip
		for: html lastId;
		with: [ html text: 'Upload '.
			html strong: 'file.zip' ]
"
Class {
	#name : #MDLTooltip,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Tooltips'
}

{ #category : #options }
MDLTooltip >> bottom [
	self position: #bottom
]

{ #category : #initialization }
MDLTooltip >> for: anId [
	self attributeAt: 'for' put: anId
]

{ #category : #initialization }
MDLTooltip >> initialize [
	super initialize.
	self class: 'mdl-tooltip'
]

{ #category : #options }
MDLTooltip >> large [
	self class: 'mdl-tooltip--large'
]

{ #category : #options }
MDLTooltip >> left [
	self position: #left
]

{ #category : #options }
MDLTooltip >> position: aSymbol [
	self class: 'mdl-tooltip--' , aSymbol
]

{ #category : #options }
MDLTooltip >> right [
	self position: #right
]

{ #category : #accessing }
MDLTooltip >> tag [
	^ 'span'
]

{ #category : #options }
MDLTooltip >> top [
	self position: #top
]
