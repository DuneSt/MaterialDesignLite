Class {
	#name : #MDLNestedListItemRenderAbstractStrategy,
	#superclass : #MDLWidget,
	#instVars : [
		'list',
		'isJsAction',
		'actionBlock',
		'helpBlock',
		'childrenBlock',
		'childrenSortBlock',
		'entryCustomizationHook',
		'format',
		'iconBlock',
		'rightIconBlock'
	],
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #'instance creation' }
MDLNestedListItemRenderAbstractStrategy class >> for: aNestedList [
	^ self new
		list: aNestedList;
		yourself
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> actionBlock [
	^ actionBlock
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> actionBlock: anObject [
	actionBlock := anObject
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> childrenBlock [
	^ childrenBlock
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> childrenBlock: anObject [
	childrenBlock := anObject
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> childrenSortBlock [
	^ childrenSortBlock
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> childrenSortBlock: anObject [
	childrenSortBlock := anObject
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> entryCustomizationHook [
	^ entryCustomizationHook
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> entryCustomizationHook: anObject [
	entryCustomizationHook := anObject
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> format [
	^ format ifNil: [ #asString ]
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> format: anObject [
	format := anObject
]

{ #category : #testing }
MDLNestedListItemRenderAbstractStrategy >> hasCustomizationForEntry [
	^ self entryCustomizationHook notNil
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> helpBlock [
	^ helpBlock
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> helpBlock: anObject [
	helpBlock := anObject
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> iconBlock [
	^ iconBlock
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> iconBlock: anObject [
	iconBlock := anObject
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> isJsAction [
	^ isJsAction
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> isJsAction: anObject [
	isJsAction := anObject
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> list [
	^ list
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> list: anObject [
	list := anObject
]

{ #category : #rendering }
MDLNestedListItemRenderAbstractStrategy >> renderHelpOf: anItem at: anId on: html [ 
	| helpText |
	(self helpBlock isNil
		or: [ self helpBlock argumentCount = 1 and: [ (helpText := self helpBlock value: anItem) isEmptyOrNil ] ])
		ifTrue: [ ^ self ].
		
	html mdlTooltip
		large;
		for: anId;
		with:
				(self helpBlock argumentCount = 1
						ifTrue: [ helpText ]
						ifFalse: [ self helpBlock mdlCull: anItem cull: html ])
]

{ #category : #rendering }
MDLNestedListItemRenderAbstractStrategy >> renderIcon: aBlock Of: anItem on: html [
	aBlock ifNil: [ ^ self ].
	
	self
		assert: (aBlock argumentCount between: 1 and: 2)
		description:
			'The icon block should have 1 or 2 arguments only. The first argument should be the item to display. If this is the only parameter the block should return a WAComponent to render. The second optional parameter will be an html canvas if you want to render directly something without passing by a component.'.
	
	aBlock argumentCount = 1
		ifTrue: [ html render: (aBlock value: anItem) ]
		ifFalse: [ aBlock value: anItem value: html ]
]

{ #category : #rendering }
MDLNestedListItemRenderAbstractStrategy >> renderItem: aNode index: anIndex inDiv: div indentedBy: anInteger on: html [
	| htmlElement |
	htmlElement := self
		getHtmlElementForNode: aNode
		inDiv: div
		index: anIndex
		indentedBy: anInteger
		on: html.
	htmlElement
		with: [ html span
				class: #item;
				id: html nextId;
				with: (((self format value: aNode element) ifNil: [ '' ]) ifEmpty: [ $  ]).
			self renderHelpOf: aNode element at: html lastId on: html ].
	aNode children
		ifNotEmpty: [ html div
				onClick: 'expandCollapse(this)';
				class: #icon ]
]

{ #category : #rendering }
MDLNestedListItemRenderAbstractStrategy >> renderItemContentOf: aNode index: anIndex indentedBy: anInteger on: html [
	| div |
	div := html div class: #itemContener.
	self hasCustomizationForEntry
		ifTrue: [ self entryCustomizationHook mdlCull: div cull: aNode element ].
	div
		attributeAt: 'draggable' put: 'true';
		attributeAt: 'onDragOver'
			put: 'if("' , anIndex asString , '" != event.dataTransfer.getData("sourceIndex")) {event.preventDefault();}';
		attributeAt: 'ondrop' put: 'dropListItem(event, "' , anIndex asString , '");';
		attributeAt: 'ondragstart' put: 'dragListItem(event,"' , anIndex asString , '")';
		style: 'padding-left: ' , (15 * anInteger) asString , 'px;';
		class: #isSelected if: aNode selectedElement;
		with: [ 
					self renderIcon: self iconBlock Of: aNode element on: html.
					self
						renderItem: aNode
						index: anIndex
						inDiv: div
						indentedBy: anInteger
						on: html.
					self renderIcon: self rightIconBlock Of: aNode element on: html ]
]

{ #category : #rendering }
MDLNestedListItemRenderAbstractStrategy >> renderListTree: aTree index: index indentedBy: indentation on: html [
	html listItem
		class: #expanded if: (self shouldBeExpandedFor: aTree);
		class: #collapsed if: (self shouldBeExpandedFor: aTree) not;
		class: #hasChildren if: aTree children isNotEmpty;
		attributeAt: #index put: index;
		with: [ self
				renderItemContentOf: aTree
				index: index
				indentedBy: indentation
				on: html.
			(self shouldBeExpandedFor: aTree)
				ifTrue: [ self
						renderSublistOf: aTree children
						parentIndex: index
						indentedBy: indentation
						on: html ] ]
]

{ #category : #rendering }
MDLNestedListItemRenderAbstractStrategy >> renderSublistOf: children parentIndex: parentIndex indentedBy: anInteger on: html [
	| sortedChildren |
	children ifEmpty: [ ^ self ].
	
	sortedChildren := self childrenSortBlock ifNil: [ children ] ifNotNil: [ :sortBlock | children sorted: [ :node1 :node2 | sortBlock value: node1 element value: node2 element ] ].
	html
		unorderedList: [ 
			sortedChildren
				doWithIndex: [ :child :index | 
					self
						renderListTree: child
						index: parentIndex asString, ':', index asString
						indentedBy: anInteger + 1
						on: html ] ]
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> rightIconBlock [
	^ rightIconBlock
]

{ #category : #accessing }
MDLNestedListItemRenderAbstractStrategy >> rightIconBlock: anObject [
	rightIconBlock := anObject
]

{ #category : #testing }
MDLNestedListItemRenderAbstractStrategy >> shouldBeExpandedFor: aTree [
	^ self list shouldBeExpanded or: [ aTree selectedBranch ]
]
