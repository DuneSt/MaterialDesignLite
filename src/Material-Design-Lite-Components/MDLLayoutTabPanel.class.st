"
Description
--------------------

I am a brush to create a tab panel.

Example
--------------------

	html mdlLayout
		fixedHeader;
		fixedTabs;
		with: [ html
				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title' ].
					html mdlLayoutTabBar
						rippleEffect;
						with: [ 1 to: 3 do: [ :int | 
								html mdlLayoutTab
									isActiveIf: int = 1;
									url: '#tab-' , int asString;
									with: 'Tab ' , int asString ] ] ].
			html mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title' ].
			html
				mdlLayoutContent: [ 1 to: 3 do: [ :int | 
						html mdlLayoutTabPanel
							isActiveIf: int = 1;
							id: 'tab-' , int asString ] ] ]
"
Class {
	#name : #MDLLayoutTabPanel,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutTabPanel >> initialize [
	super initialize.
	self class: 'mdl-layout__tab-panel'
]

{ #category : #options }
MDLLayoutTabPanel >> isActive [
	self class: 'is-active'
]

{ #category : #options }
MDLLayoutTabPanel >> isActiveIf: aBoolean [
	aBoolean ifTrue: [ self isActive ]
]
