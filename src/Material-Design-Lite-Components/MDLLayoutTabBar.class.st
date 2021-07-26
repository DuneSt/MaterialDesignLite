"
Description
--------------------

I am a brush to create a tab bar for layouts.

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
	#name : #MDLLayoutTabBar,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Layout'
}

{ #category : #initialization }
MDLLayoutTabBar >> initialize [
	super initialize.
	self class: 'mdl-layout__tab-bar'
]

{ #category : #options }
MDLLayoutTabBar >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLLayoutTabBar >> rippleEffectIf: aBoolean [
	aBoolean ifTrue: [ self class: 'mdl-js-ripple-effect' ]
]
