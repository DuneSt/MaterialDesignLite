"
Description
--------------------

I am a brush to create a container for tabs.

Example
--------------------

	| famillies |
	famillies := OrderedDictionary
		with: 'Starks' 		-> #('Eddard' 'Catelyn' 'Robb' 'Sansa' 'Brandon' 'Rickon' 'Arya')
		with: 'Lanisters' 	-> #('Tywin' 'Cersei' 'Jamie' 'Tyrion')
		with: 'Targaryens' 	-> #('Viserys' 'Daenerys').
	html
		mdlTabs: [ html mdlTabBar
				rippleEffect;
				with: [ famillies
						keysDo: [ :familly | 
							html mdlTab
								isActiveIf: familly = 'Starks';
								url: '#' , familly;
								with: familly ] ].
			famillies
				keysAndValuesDo: [ :familly :members | 
					html mdlTabsPanel
						isActiveIf: familly = 'Starks';
						id: familly;
						with: [ html unorderedList: [ members do: [ :member | html listItem: member ] ] ] ] ]
"
Class {
	#name : #MDLTabsContainer,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #initialization }
MDLTabsContainer >> initialize [
	super initialize.
	self class: 'mdl-tabs'.
	self class: 'mdl-js-tabs'
]

{ #category : #options }
MDLTabsContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLTabsContainer >> rippleEffectIf: aBoolean [
	aBoolean ifTrue: [ self rippleEffect ]
]
