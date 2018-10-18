"
I represent a simple widget to use mdlTable
"
Class {
	#name : #MDLTabWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'tabs'
	],
	#category : 'Material-Design-Lite-Widgets-Tab'
}

{ #category : #adding }
MDLTabWidget >> addTabNamed: aString content: anObject [
	tabs at: aString put: anObject
]

{ #category : #initialization }
MDLTabWidget >> initialize [
	super initialize.
	tabs := OrderedDictionary new
]

{ #category : #rendering }
MDLTabWidget >> renderContentOn: html [
	self ensureId: html.
	html mdlTabs
		id: self id;
		with: [ | tabIds |
			tabIds := Dictionary new.
			html
				mdlTabBar: [ tabs
						keysAndValuesDo: [ :label :tabContent | 
							html mdlTab
								url: '#' , (tabIds at: tabContent ifAbsentPut: [ html nextId ]);
								isActiveIf: (tabs indexOfKey: label) = 1;
								with: label ] ].
			tabs
				keysAndValuesDo: [ :label :tabContent | 
					html mdlTabsPanel
						id: (tabIds at: tabContent);
						isActiveIf: (tabs indexOfKey: label) = 1;
						with: tabContent ] ]
]
