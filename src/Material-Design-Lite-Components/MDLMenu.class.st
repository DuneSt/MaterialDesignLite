"
Description
--------------------

I am a brush to create a dropdown menu.

Example
--------------------

	html div
		class: 'container';
		shadow: 2;
		with: [ html div
				class: 'bar';
				with: [ html mdlButton icon
						id: #bottomLeftButton;
						with: [ html mdlIcon: #more_vert ].
					html mdlMenu
						bottomLeft;
						for: #bottomLeftButton;
						with: [ html mdlMenuItem: 'Some Action'.
							html mdlMenuItem
								fullBleedDivider;
								with: 'Another Action'.
							html mdlMenuItem
								disabled;
								with: 'Disabled Action'.
							html mdlMenuItem: 'Yet Another Action' ] ].
			html div class: 'background' ]
"
Class {
	#name : #MDLMenu,
	#superclass : #WAUnorderedListTag,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #options }
MDLMenu >> bottomLeft [
	self class: 'mdl-menu--bottom-left'
]

{ #category : #options }
MDLMenu >> bottomRight [
	self class: 'mdl-menu--bottom-right'
]

{ #category : #options }
MDLMenu >> for: anId [
	self attributeAt: 'for' put: anId
]

{ #category : #initialization }
MDLMenu >> initialize [
	super initialize.
	self class: 'mdl-menu'.
	self class: 'mdl-js-menu'
]

{ #category : #options }
MDLMenu >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLMenu >> rippleEffectIf: aBoolean [
	aBoolean ifTrue: [ self rippleEffect ]
]

{ #category : #options }
MDLMenu >> topLeft [
	self class: 'mdl-menu--top-left'
]

{ #category : #options }
MDLMenu >> topRight [
	self class: 'mdl-menu--top-right'
]
