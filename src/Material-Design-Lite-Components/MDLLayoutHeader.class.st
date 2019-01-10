"
Description
--------------------

I am a brush to create a header for a layout.

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
	#name : #MDLLayoutHeader,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutHeader >> initialize [
	super initialize.
	self class: 'mdl-layout__header'
]

{ #category : #options }
MDLLayoutHeader >> scroll [
	"Makes the header scroll with the content"

	self class: 'mdl-layout__header--scroll'
]

{ #category : #options }
MDLLayoutHeader >> seamed [
	"Uses a header without a shadow"

	self class: 'mdl-layout__header--seamed'
]

{ #category : #accessing }
MDLLayoutHeader >> tag [
	^ 'header'
]

{ #category : #options }
MDLLayoutHeader >> transparent [
	self class: 'mdl-layout__header--transparent'
]

{ #category : #options }
MDLLayoutHeader >> waterfall [
	"Allows a 'waterfall' effect with multiple header lines"

	self class: 'mdl-layout__header--waterfall'
]

{ #category : #options }
MDLLayoutHeader >> waterfallHideTop [
	"Hides the top rather than the bottom rows on a waterfall header"

	self class: 'mdl-layout__header--waterfall-hide-top'
]
