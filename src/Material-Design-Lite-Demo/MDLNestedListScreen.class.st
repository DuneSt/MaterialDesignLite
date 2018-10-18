"
I am nested list demonstration panel
"
Class {
	#name : #MDLNestedListScreen,
	#superclass : #MDLWidgetDemo,
	#instVars : [
		'selectedElement'
	],
	#category : 'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLNestedListScreen class >> description [
	^ 'A smart list that will dynamically load in Ajax'
]

{ #category : #accessing }
MDLNestedListScreen class >> icon [
	^ 'complistsPng'
]

{ #category : #accessing }
MDLNestedListScreen class >> title [
	^ 'Nested list'
]

{ #category : #sections }
MDLNestedListScreen >> ajaxActionList [
	^ OrderedDictionary new
		add: 'Ajax action list' -> #renderAjaxActionListOn:;
		yourself
]

{ #category : #sections }
MDLNestedListScreen >> iconsList [
	^ OrderedDictionary new
		add: 'List with icons' -> #renderListWithIconsOn:;
		yourself
]

{ #category : #sections }
MDLNestedListScreen >> nestedList [
	^ OrderedDictionary new
		add: 'Nested List' -> #renderNestedListOn:;
		yourself
]

{ #category : #demos }
MDLNestedListScreen >> renderAjaxActionListOn: html [
	| divId divId2 |
	divId := html nextId.
	divId2 := html nextId.
	html div
		style: 'height: 400px; width: 400px;';
		shadow: 2;
		with:
			((MDLNestedList
				elements: WAObject allSubclasses
				children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
				format: #name;
				beCompact;
				onLoadHook: ((html jQuery id: divId) load html: [ :ajaxHtml | ajaxHtml text: 'Ajax hook executed at ' , DateAndTime now printString ]);
				onClickJs: [ :entity | (html jQuery id: divId2) load html: [ :ajaxHtml | ajaxHtml text: 'Selected: ' , entity printString ] ];
				withResearchField;
				filterSubstring;
				yourself).
	html div mdlTextColorPrimary; id: divId.
	html div mdlTextColorAccent; id: divId2
]

{ #category : #demos }
MDLNestedListScreen >> renderListWithIconsOn: html [
	html div
		style: 'height: 400px; width: 400px;';
		shadow: 2;
		with:
			((MDLNestedList
				elements: WAObject allSubclasses
				children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
				"The next blocks can either:
				- Take one argument (the entity) and return a component to display
				- Take two argument (entity + canvas) and draw the icon on the canvas"
				iconBlock: [ :entity | MDLNestedListIconExampleComponent isRepresentingClass: entity isClass ];
				rightIconBlock: [ :entity :canvas | 
					canvas mdlChipContact
						hexColor: '3f51b5';
						with: entity printString last ];
				format: #name;
				yourself)
	
]

{ #category : #demos }
MDLNestedListScreen >> renderListWithSortedChildrenOn: html [
	html div
		style: 'height: 400px; width: 400px;';
		shadow: 2;
		with:
			((MDLNestedList
				elements: WAObject allSubclasses
				children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
				format: #name;
				childrenSortBlock: [ :child1 :child2 | child1 name < child2 name ];
				yourself)
]

{ #category : #demos }
MDLNestedListScreen >> renderNestedListOn: html [
	html div
		mdlTextColorPrimary;
		with: 'Selected element: ' , (selectedElement ifNil: [ 'Nothing' ] ifNotNil: [ selectedElement printString ]).
	html div
		style: 'height: 400px; width: 400px;';
		shadow: 2;
		with:
			((MDLNestedList
				elements: WAObject allSubclasses
				children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
				format: #name;
				helpBlock: #comment;
				selectedEntity: selectedElement;
				actionBlock: [ :class | selectedElement := class ];
				yourself)
]

{ #category : #rendering }
MDLNestedListScreen >> renderScreenContentOn: html [
	self
		render: self nestedList on: html;
		render: self searchableList on: html;
		render: self ajaxActionList on: html;
		render: self iconsList on: html;
		render: self sortedChildrenList on: html
]

{ #category : #demos }
MDLNestedListScreen >> renderSearchableListOn: html [
	html div
		style: 'height: 400px; width: 400px;';
		shadow: 2;
		with:
			((MDLNestedList
				elements: WAObject allSubclasses
				children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
				format: #name;
				withResearchField;
				"Could be also filterPseudoRegex or filterSensitiveBeginsWith or a specific filter created with #filter:"
				filterInsensitiveBeginsWith;
				yourself)
]

{ #category : #sections }
MDLNestedListScreen >> searchableList [
	^ OrderedDictionary new
		add: 'Searchable list' -> #renderSearchableListOn:;
		yourself
]

{ #category : #sections }
MDLNestedListScreen >> sortedChildrenList [
	^ OrderedDictionary new
		add: 'List with sorted children' -> #renderListWithSortedChildrenOn:;
		yourself
]
