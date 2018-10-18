"
Description
--------------------

I am a brush to create a layout drawer. A drawer is a menu in the title.

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
	#name : #MDLLayoutDrawer,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutDrawer >> initialize [
	super initialize.
	self class: 'mdl-layout__drawer'
]
