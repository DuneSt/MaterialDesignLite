"
Description
--------------------

I am a brush to create a MDL layout.

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
	#name : #MDLLayout,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Layout'
}

{ #category : #options }
MDLLayout >> fixedDrawer [
	"This option will make the drawer visible all the time instebad of using an icon to show it."

	self class: 'mdl-layout--fixed-drawer'
]

{ #category : #options }
MDLLayout >> fixedHeader [
	"This option will make the header visible of large and small screen. This is not about making the header visible when we scroll but about making the header visible on small screens."

	self class: 'mdl-layout--fixed-header'
]

{ #category : #options }
MDLLayout >> fixedTabs [
	"Uses fixed tabs instead of the default scrollable tabs"

	self class: 'mdl-layout--fixed-tabs'
]

{ #category : #initialization }
MDLLayout >> initialize [
	super initialize.
	self class: 'mdl-layout'.
	self class: 'mdl-js-layout'. 
]

{ #category : #options }
MDLLayout >> noDesktopDrawerButton [
	self class: 'mdl-layout--no-desktop-drawer-button' 
]

{ #category : #options }
MDLLayout >> noDrawerButton [
	self class: 'mdl-layout--no-drawer-button' 
]
