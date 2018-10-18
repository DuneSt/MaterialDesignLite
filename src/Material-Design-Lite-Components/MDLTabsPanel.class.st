"
Description
--------------------

I'm a Panel that can be used as a Tab.

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
	#name : #MDLTabsPanel,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Nav'
}

{ #category : #initialization }
MDLTabsPanel >> initialize [
	super initialize.
	self class: 'mdl-tabs__panel'
]

{ #category : #options }
MDLTabsPanel >> isActive [
	self class: 'is-active'
]

{ #category : #options }
MDLTabsPanel >> isActiveIf: aBoolean [
	aBoolean ifTrue: [ self isActive ]
]
