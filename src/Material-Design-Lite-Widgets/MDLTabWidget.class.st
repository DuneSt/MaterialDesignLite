"
I represent a simple widget to use mdlTable
"
Class {
	#name : #MDLTabWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'tabs',
		'selectedTabIndex'
	],
	#category : #'Material-Design-Lite-Widgets-Tab'
}

{ #category : #adding }
MDLTabWidget >> addTabNamed: aString content: anObject [
	tabs at: aString put: anObject
]

{ #category : #initialization }
MDLTabWidget >> initialize [

	super initialize.
	tabs := OrderedDictionary new.
	selectedTabIndex := 1
]

{ #category : #rendering }
MDLTabWidget >> renderContentOn: html [

	self ensureId: html.
	html mdlTabs
		id: self id;
		with: [ 
			| tabIds |
			tabIds := Dictionary new.
			html mdlTabBar: [ 
					tabs keysAndValuesDo: [ :label :tabContent | 
							html mdlTab
								url:
									'#' , (tabIds at: tabContent ifAbsentPut: [ html nextId ]);
								
								onClick: (html jQuery ajax callback: [ 
											 self selectedTabIndex: (tabs indexOfKey: label) ]);
								isActiveIf: (tabs indexOfKey: label) = self selectedTabIndex;
								with: label ] ].
			tabs keysAndValuesDo: [ :label :tabContent | 
				html mdlTabsPanel
					id: (tabIds at: tabContent);
					isActiveIf: (tabs indexOfKey: label) = self selectedTabIndex;
					with: tabContent ] ]
]

{ #category : #accessing }
MDLTabWidget >> selectedTabIndex [

^selectedTabIndex 
]

{ #category : #accessing }
MDLTabWidget >> selectedTabIndex: aNumber [

	 selectedTabIndex := aNumber 
]
