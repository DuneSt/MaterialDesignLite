"
Description
--------------------

I am a brush to create small status descriptors for UI elements.

Example
--------------------

	html mdlIconBadge
		dataBadge: '1';
		overlap;
		with: 'account_box'
"
Class {
	#name : #MDLBadge,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Badge'
}

{ #category : #options }
MDLBadge >> dataBadge: aString [
	"Assigns a value to the badge"
	
	self attributeAt: 'data-badge' put: aString 
]

{ #category : #initialization }
MDLBadge >> initialize [
	super initialize.
	self class: 'mdl-badge'
]

{ #category : #options }
MDLBadge >> noBackground [
	"Applies open-circle effect to badge"
	
	self class: 'mdl-badge--no-background'
]

{ #category : #options }
MDLBadge >> overlap [
	"Make the badge overlap with its container"
	
	self class: 'mdl-badge--overlap'
]

{ #category : #accessing }
MDLBadge >> tag [
	^ 'span'
]
