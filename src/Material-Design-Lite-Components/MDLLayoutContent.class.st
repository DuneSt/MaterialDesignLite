"
Description
--------------------

I am a brush to create a content of a Layout.

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
	#name : #MDLLayoutContent,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutContent >> initialize [
	super initialize.
	self class: 'mdl-layout__content'
]

{ #category : #accessing }
MDLLayoutContent >> tag [
	^ 'main'
]
