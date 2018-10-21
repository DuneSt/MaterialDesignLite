"
Description
--------------------

I am a brush to create small status descriptors for UI elements with an icon.

Example
--------------------

	html mdlIconBadge
		dataBadge: (Character codePoint: 9829) asString;
		overlap;
		with: 'account_box'
	
"
Class {
	#name : #MDLIconBadge,
	#superclass : #MDLBadge,
	#category : #'Material-Design-Lite-Components-Badge'
}

{ #category : #'initialize-release' }
MDLIconBadge >> initialize [
	super initialize.
	self class: 'material-icons'
]

{ #category : #accessing }
MDLIconBadge >> tag [
	^ 'div'
]
