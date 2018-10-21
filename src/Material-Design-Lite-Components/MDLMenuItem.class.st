"
Description
--------------------

I am a brush to create a dropdown menu item.

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
	#name : #MDLMenuItem,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Nav'
}

{ #category : #options }
MDLMenuItem >> disable [
	self deprecated: 'Use #disabled instead' transformWith: '`@receiver disable' -> '`@receiver disabled'.
	self disabled
]

{ #category : #options }
MDLMenuItem >> disabled [
	self attributeAt: 'disabled' put: 'true'
]

{ #category : #options }
MDLMenuItem >> fullBleedDivider [
	self class: 'mdl-menu__item--full-bleed-divider'
]

{ #category : #initialization }
MDLMenuItem >> initialize [
	super initialize.
	self class: 'mdl-menu__item'
]

{ #category : #accessing }
MDLMenuItem >> tag [
	^ 'li'
]
