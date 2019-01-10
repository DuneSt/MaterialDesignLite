"
Description
--------------------

I am a brush to create a tab for layouts.

Example
--------------------

	html mdlLayout
		fixedHeader;
		with: [ html
				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title' ].
					html
						mdlLayoutTabBar
						rippleEffect;
						with: [ 1 to: 6 do: [ :int | 
								html mdlLayoutTab
									isActiveIf: int = 1;
									url: '#tab-' , int asString;
									with: 'Tab ' , int asString ] ] ].
			html mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title' ].
			html
				mdlLayoutContent: [ 1 to: 6 do: [ :int | 
						html mdlLayoutTabPanel
							isActiveIf: int = 1;
							id: 'tab-' , int asString ] ] ]
"
Class {
	#name : #MDLLayoutTab,
	#superclass : #WAAnchorTag,
	#category : #'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutTab >> initialize [
	super initialize.
	self class: 'mdl-layout__tab'
]

{ #category : #options }
MDLLayoutTab >> isActive [
	self class: 'is-active'
]

{ #category : #options }
MDLLayoutTab >> isActiveIf: aBoolean [
	aBoolean
		ifTrue: [ self isActive ]
]
