"
Description
--------------------

I am a brush to create a navigation link.

Example
--------------------

	html mdlLayout
		style: 'background: url(''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , ''') center / cover;';
		with: [ 
			html mdlLayoutHeader
				transparent;
				with: [ 
					html
						mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title'.
							html mdlLayoutSpacer.
							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].
			html
				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.
					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ].
			html mdlLayoutContent: [  ] ]
"
Class {
	#name : #MDLNavigationLink,
	#superclass : #WAAnchorTag,
	#category : #'Material-Design-Lite-Components-Nav'
}

{ #category : #options }
MDLNavigationLink >> beCurrent [
    self class: 'mdl-navigation__link--current'
]

{ #category : #options }
MDLNavigationLink >> beCurrentIf: aBlockOrBoolean [
	aBlockOrBoolean value
		ifTrue: [ self beCurrent ]
]

{ #category : #initialization }
MDLNavigationLink >> initialize [
	super initialize.
	self class: 'mdl-navigation__link'
]
