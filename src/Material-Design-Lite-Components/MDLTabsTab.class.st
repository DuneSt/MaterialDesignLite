"
Description
--------------------

I am a brush to create a MDL tab.

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
	#name : #MDLTabsTab,
	#superclass : #WAAnchorTag,
	#category : #'Material-Design-Lite-Components-Nav'
}

{ #category : #initialization }
MDLTabsTab >> initialize [
	super initialize.
	self class: 'mdl-tabs__tab'
]

{ #category : #options }
MDLTabsTab >> isActive [
	self class: 'is-active'
]

{ #category : #options }
MDLTabsTab >> isActiveIf: aBoolean [
	aBoolean ifTrue: [ self isActive ]
]

{ #category : #accessing }
MDLTabsTab >> url: aUrlOrString [

	aUrlOrString isString ifFalse: [ ^ super url: aUrlOrString ].
	self useBaseUrl.

	url addToPath: aUrlOrString
]
