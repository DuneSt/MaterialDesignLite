"
I am a component use to display nicely a list of elements. 
I am also able to display nested list as a tree.

Description
------------------

I display a list of elements and I manage most of the css needed to make a good rendering.
For the icon check MDLListIconComponent or give any component you want.

For more info you can test the demo.

Public API and Key Messages
------------------

- #actionBlock: aBlock 			Allow to set an action to execute on click
- #elements: aCollection			Is the list of elements to display
- #children: aBlock 				Return for each element his childrens
- #format: aBlock 					Is a block that take an element and return the element with the right format
- #selectedEntity: anElement 		If the element in parameter is in the list, it zill be highlighted 
- #helpBlock: aBlock 				Allow to add a fly by help on elements
- #iconBlock: aBlock 				Allow to add an icon on each line

Example
------------------
 
	(SYNListComponent elements: #(1 34 56 89) children: [ :number | number even ifTrue: [ {(number + 1) . (number + 3) } ] ifFalse: [ #() ] ] ])
		actionBlock: [ :elem | Transcript crShow: elem asString ];
		format: [ :elem | elem asString , '%' ];
		selectedEntity: 34;
		yourself

Internal Representation and Key Implementation Points.
------------------

    Instance Variables
	actionBlock:		<aBlockOrSymbol> 	A block executed when an element is selected
	children: 		<aBlockOrSymbol> 	A block that return the list of children of an element
	elements:		<aCollection> 		A collection of elements to display
	format:			<aBlockOrSymbol> 	A block executed to format an element
	selectedEntity:	<anElement> 		An element that need to be highlighted in the list
	helpBlock:		<aBlockOrSymbol>	A block that return an optional fly-by-felp for an element
	iconBlock:		<aBlockOrSymbol>	A block thet return an optional SYNListIconComponent for a line of the list
"
Class {
	#name : #MDLNestedList,
	#superclass : #MDLWidget,
	#instVars : [
		'elements',
		'entryCustomizationHook',
		'filteredElements',
		'selectedEntity',
		'dragAndDropBlock',
		'displayResearchField',
		'displayResearchFilter',
		'filter',
		'listStyle',
		'onLoadHook',
		'listMaxSize',
		'obtainedTreesCache',
		'strategy',
		'shouldBeExpanded'
	],
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #'instance creation' }
MDLNestedList class >> elements: aCollection [
	^ self new
		elements: aCollection;
		yourself
]

{ #category : #'instance creation' }
MDLNestedList class >> elements: aCollection children: aBlockOrSymbole [
	^ (self elements: aCollection)
		childrenBlock: aBlockOrSymbole;
		yourself
]

{ #category : #accessing }
MDLNestedList >> actionBlock [
	^ self strategy actionBlock
]

{ #category : #accessing }
MDLNestedList >> actionBlock: aBlock [
	self
		assert: aBlock argumentCount <= 2
		description:
			'This block must take one argument; it will be the clicked entity in the list'.
	self strategy actionBlock: aBlock
]

{ #category : #private }
MDLNestedList >> at: anInteger ifPresent: aBlockClosure [ 
	aBlockClosure value: (self filteredElements at: anInteger)
]

{ #category : #accessing }
MDLNestedList >> beCompact [
	self listStyle: #compact
]

{ #category : #accessing }
MDLNestedList >> beStandard [
	self listStyle: #standard
]

{ #category : #accessing }
MDLNestedList >> children: aBlockOrSymbol [
	self childrenBlock: aBlockOrSymbol
]

{ #category : #accessing }
MDLNestedList >> childrenBlock [
	^ self strategy childrenBlock
		ifNil: [ self strategy childrenBlock: [ :item | #() ].
			self strategy childrenBlock ]
]

{ #category : #accessing }
MDLNestedList >> childrenBlock: anObject [
	self strategy childrenBlock: anObject
]

{ #category : #accessing }
MDLNestedList >> childrenSortBlock [
	^ self strategy childrenSortBlock
]

{ #category : #accessing }
MDLNestedList >> childrenSortBlock: aBlock [
	self strategy childrenSortBlock: aBlock
]

{ #category : #javascript }
MDLNestedList >> defineChildrenCallbackOn: aDiv [
	^ aDiv
		storeCallback:
			(WAValueCallback
				on: [ :intervalRequest | 
					self requestContext
						respond: [ :response | 
							self
								printSublistFor: intervalRequest
								context: aDiv canvas context
								on:
									(response
										doNotCache;
										contentType: WAMimeType textHtml;
										stream) ] ])
]

{ #category : #javascript }
MDLNestedList >> defineScrollCallbackOn: aDiv [
	^ aDiv
		storeCallback:
			(WAValueCallback
				on: [ :intervalRequest | 
					| interval |
					interval := $: split: intervalRequest.
					self requestContext
						respond: [ :response | 
							self
								printHtmlForElementsFrom: interval first asNumber
								to: interval last asNumber
								context: aDiv canvas context
								on:
									(response
										doNotCache;
										contentType: WAMimeType textHtml;
										stream) ] ])
]

{ #category : #accessing }
MDLNestedList >> displayResearchField [
	^ displayResearchField
]

{ #category : #accessing }
MDLNestedList >> displayResearchField: aBoolean [
	displayResearchField := aBoolean 
]

{ #category : #accessing }
MDLNestedList >> displayResearchFilter [
	^ displayResearchFilter
]

{ #category : #accessing }
MDLNestedList >> displayResearchFilter: aFilter [
	aFilter
		ifEmpty: [ 
			displayResearchFilter := nil.
			filteredElements := #() ]
		ifNotEmpty: [ 
			displayResearchFilter := aFilter.
			filteredElements := self filter
				selectMatchingFrom: self elements
				format: self format
				with: self displayResearchFilter ]
]

{ #category : #accessing }
MDLNestedList >> dragAndDropBlock [
	^ dragAndDropBlock
]

{ #category : #accessing }
MDLNestedList >> dragAndDropBlock: anObject [
	dragAndDropBlock := anObject
]

{ #category : #draggable }
MDLNestedList >> draggableMechanism: html forDiv: div [
	self hasDraggableItems
		ifTrue: [ 
			html
				script:
					(self
						draggableScript: html actionUrl
						cb:
							(div
								storeCallback:
									(WAValueCallback
										on: [ :drag | 
											| dragValues |
											dragValues := drag substrings: ';'.
											self dragAndDropBlock
												value: (self obtainElementForPath: dragValues first)
												value: (self obtainElementForPath: dragValues second) ]))) ]
]

{ #category : #draggable }
MDLNestedList >> draggableScript:url cb: draggableCb [
	^ 'function dragListItem(ev, index) {
    ev.dataTransfer.setData("sourceIndex", index);
}


function dropListItem(ev, index){
	var source = ev.dataTransfer.getData("sourceIndex");
	var target = index;
	if(source == target) console.log("Sleep");
	else post("' , url asString , '",{' , draggableCb
		,
			': source + ";" + target});;
}'
]

{ #category : #accessing }
MDLNestedList >> elements [
	^ elements value
]

{ #category : #accessing }
MDLNestedList >> elements: anObject [
	elements := anObject.
	"reinitialize the filter when list change"
	self displayResearchFilter: ''
]

{ #category : #accessing }
MDLNestedList >> elementsDisplayList [
	| start overflow |
	^ self filteredElements size <= self listMaxSize
		ifTrue: [ self filteredElements ]
		ifFalse: [ start := self indexOfRootElementContainingSelectedEntity - (self listMaxSize / 2) max: 1.
			overflow := 0 max: start + self listMaxSize - self filteredElements size.
			self filteredElements copyFrom: start - overflow to: start + self listMaxSize - 1 - overflow ]
]

{ #category : #accessing }
MDLNestedList >> entryCustomizationHook [
	^ entryCustomizationHook
]

{ #category : #accessing }
MDLNestedList >> entryCustomizationHook: anObject [
	entryCustomizationHook := anObject
]

{ #category : #accessing }
MDLNestedList >> expandAll [
	self flag: #todo. "Later we should also have a mecanism to expand only a part of the list."
	shouldBeExpanded := true
]

{ #category : #accessing }
MDLNestedList >> filter [
	^ filter
]

{ #category : #accessing }
MDLNestedList >> filter: anObject [
	filter := anObject
]

{ #category : #accessing }
MDLNestedList >> filterInsensitiveBeginsWith [
	self filter: MDLInsensitiveBeginsWithFilter
]

{ #category : #accessing }
MDLNestedList >> filterInsensitiveSubstring [
	self filter: MDLInsensitiveSubstringFilter
]

{ #category : #accessing }
MDLNestedList >> filterPseudoRegex [
	self filter: MDLPseudoRegexFilter
]

{ #category : #accessing }
MDLNestedList >> filterSensitiveBeginsWith [
	self filter: MDLBeginsWithFilter 
]

{ #category : #accessing }
MDLNestedList >> filterSubstring [
	self filter: MDLSubstringFilter
]

{ #category : #accessing }
MDLNestedList >> filteredElements [
	^ self displayResearchFilter ifNil: [ self elements ] ifNotNil: [ filteredElements ]
]

{ #category : #accessing }
MDLNestedList >> format [
	^ self strategy format
]

{ #category : #accessing }
MDLNestedList >> format: anObject [
	self strategy format: anObject
]

{ #category : #testing }
MDLNestedList >> hasDraggableItems [
	^ self dragAndDropBlock notNil
]

{ #category : #accessing }
MDLNestedList >> helpBlock [
	^ self strategy helpBlock
]

{ #category : #accessing }
MDLNestedList >> helpBlock: anObject [
	self strategy helpBlock: anObject
]

{ #category : #accessing }
MDLNestedList >> iconBlock [
	^ self strategy iconBlock
]

{ #category : #accessing }
MDLNestedList >> iconBlock: anObject [
	self strategy iconBlock: anObject
]

{ #category : #private }
MDLNestedList >> idFor: aSymbol [
	^ aSymbol, self id
]

{ #category : #accessing }
MDLNestedList >> indexOfRootElementContainingSelectedEntity [
	self selectedEntity ifNil: [ ^ 0 ].
	^ self filteredElements
		indexOf: self selectedEntity
		ifAbsent: [ self filteredElements
				detect: [ :element | self isIncludingSelectedChildren: element ]
				ifFound: [ :element | self filteredElements indexOf: element ]
				ifNone: [ "The selected element is not at all in the tree" 1 ] ]
]

{ #category : #initialization }
MDLNestedList >> initialize [
	super initialize.
	self
		listMaxSize: 150;
		displayResearchField: false;
		isJsAction: false;
		listStyle: #standard;
		filterInsensitiveBeginsWith;
		onLoadHook: 'componentHandler.upgradeDom();';
		shouldBeExpanded: false
]

{ #category : #positionning }
MDLNestedList >> isIncludingSelectedChildren: anElement [
	^ (self childrenBlock value: anElement) anySatisfy: [ :aChildren | aChildren = selectedEntity or: [ self isIncludingSelectedChildren: aChildren ] ]
]

{ #category : #accessing }
MDLNestedList >> isJsAction [
	^ self strategy isJsAction
]

{ #category : #accessing }
MDLNestedList >> isJsAction: anObject [
	self strategy isJsAction: anObject
]

{ #category : #javascript }
MDLNestedList >> jsOnLoadHook [
	^ self onLoadHook js
]

{ #category : #accessing }
MDLNestedList >> listElementsDynamicalLoadingStep [
	"It is the number of elements asked in ajax to the server when user scroll"
	^ self listMaxSize / 5
]

{ #category : #accessing }
MDLNestedList >> listMaxSize [
	^ listMaxSize
]

{ #category : #accessing }
MDLNestedList >> listMaxSize: anObject [
	listMaxSize := anObject
]

{ #category : #accessing }
MDLNestedList >> listStyle [
	^ listStyle
]

{ #category : #accessing }
MDLNestedList >> listStyle: anObject [
	listStyle := anObject
]

{ #category : #private }
MDLNestedList >> obtainElementForPath: aPath [
	| path |
	path := $: split: aPath.
	^ (path allButLast
		inject: self filteredElements
		into: [ :elemts :anIndex | 
			| res |
			res := self childrenBlock value: (elemts at: anIndex asNumber).
			self childrenSortBlock ifNil: [ res ] ifNotNil: [ :sortBlock | res sorted: sortBlock ] ]) at: path last asNumber
]

{ #category : #private }
MDLNestedList >> obtainTreeFor: anElement [
	^  self obtainedTreesCache at: anElement ifAbsentPut: [ MDLNestedListTreeNode list: self element: anElement ]
]

{ #category : #accessing }
MDLNestedList >> obtainedTreesCache [
	^ obtainedTreesCache ifNil: [ obtainedTreesCache := IdentityDictionary new ]
]

{ #category : #accessing }
MDLNestedList >> obtainedTreesCache: anObject [
	obtainedTreesCache := anObject
]

{ #category : #accessing }
MDLNestedList >> onClickJs: anActionBlock [
	self actionBlock: anActionBlock.
	self isJsAction: true
]

{ #category : #accessing }
MDLNestedList >> onLoadHook [
	^ onLoadHook
]

{ #category : #accessing }
MDLNestedList >> onLoadHook: anObject [
	onLoadHook := anObject
]

{ #category : #rendering }
MDLNestedList >> printHtmlForElementsFrom: start to: end context: aContext on: stream [
	self
		printResultOf: [ :html | 
			(start <= self filteredElements size and: [ end >= 1 ])
				ifTrue: [ self filteredElements
						from: (start max: 1)
						to: (end min: self filteredElements size)
						do: [ :anElement | 
							self strategy
								renderListTree: (self obtainTreeFor: anElement)
								index: (self filteredElements indexOf: anElement)
								indentedBy: 1
								on: html ] ] ]
		context: aContext
		on: stream
]

{ #category : #rendering }
MDLNestedList >> printResultOf: aBlock context: aContext on: stream [
	| document |
	document := (WAHtmlDocument on: stream codec: GRNullCodec new)
		scriptGenerator: WADefaultScriptGenerator new;
		yourself.
	aContext document: document.
	(WAHtmlCanvas context: aContext)
		render: aBlock;
		flush.
	document scriptGenerator closeOn: document
]

{ #category : #rendering }
MDLNestedList >> printSublistFor: anIntervalRequest context: aContext on: stream [
	self
		printResultOf: [ :html | 
			self strategy
				renderSublistOf:
					(self obtainTreeFor: (self obtainElementForPath: anIntervalRequest))
						children
				parentIndex: anIntervalRequest
				indentedBy: (anIntervalRequest occurrencesOf: $:) + 1
				on: html ]
		context: aContext
		on: stream
]

{ #category : #rendering }
MDLNestedList >> renderContentOn: html [
	self ensureId: html.
	self obtainedTreesCache: nil. "Reset cache while loading page."
	html div
		id: (self idFor: #nestedList);
		class: #nestedList;
		class: self listStyle;
		with: [ 
					self renderFilterFieldOn: html.
					html div
						id: (self idFor: #listContent);
						class: #listContent;
						class: #withSearch if: self displayResearchField;
						with: [ self renderListOn: html ] ]
]

{ #category : #researchField }
MDLNestedList >> renderFilterFieldOn: html [
	self displayResearchField ifFalse: [ ^ self ].
	
	html div
		class: #listResearchField;
		with: [ html
				mdlTextFieldContainer: [ html mdlTextFieldLabel
						for: (self idFor: #researchFieldId);
						with: 'Search'.
					html mdlTextFieldInput
						id: (self idFor: #researchFieldId);
						type: 'text';
						value: self displayResearchFilter;
						onChange:
							(html jQuery ajax
								callback: [ :filt | self displayResearchFilter: filt ] value: 'event.target.value' js;
								onComplete:
									((html jQuery: '#' , (self idFor: #listContainer)) parent load
										html: [ :htm | self renderListOn: htm ];
										onComplete: (self jsOnLoadHook , ('scrollToSelection();defineExpandable();stopSpinnerOf("' , (self idFor: #researchFieldId) , '")') js))) ].
			html mdlSpinner singleColor ]
]

{ #category : #rendering }
MDLNestedList >> renderHelpOf: anItem at: anId on: html [
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
MDLNestedList >> renderListOn: html [
	| div |
	div := html div
		id: (self idFor: #listContainer);
		class: #listContainer.
	self setDataForCallBackFor: div html: html.
	div
		with: [ 
			| elementsToDisplay firstElementIndex |
			elementsToDisplay := self elementsDisplayList.
			firstElementIndex := self filteredElements
				indexOf: (elementsToDisplay ifEmpty: [ nil ] ifNotEmpty: [ :coll | coll first ]).
			html unorderedList
				id: (self idFor: #expList);
				class: #expList;
				with: [ 
							elementsToDisplay
								doWithIndex: [ :item :index | 
									self strategy
										renderListTree: (self obtainTreeFor: item)
										index: index + firstElementIndex - 1
										indentedBy: 1
										on: html ] ] ].
	self draggableMechanism: html forDiv: div
]

{ #category : #accessing }
MDLNestedList >> rightIconBlock [
	^ self strategy rightIconBlock
]

{ #category : #accessing }
MDLNestedList >> rightIconBlock: anObject [
	self strategy rightIconBlock: anObject
]

{ #category : #accessing }
MDLNestedList >> selectedEntity [
	^ selectedEntity
]

{ #category : #accessing }
MDLNestedList >> selectedEntity: anObject [
	selectedEntity := anObject
]

{ #category : #hooks }
MDLNestedList >> setAjaxStrategy [
	self strategy: self strategy asAjaxStrategy
]

{ #category : #javascript }
MDLNestedList >> setDataForCallBackFor: div html: html [
	div
		attributeAt: #'data-url' put: html actionUrl asString;
		attributeAt: #'data-cbId' put: (self defineScrollCallbackOn: div) asString;
		attributeAt: #'data-childrenCbId' put: (self defineChildrenCallbackOn: div) asString;
		attributeAt: #'data-listMaxSize' put: self listMaxSize asString;
		attributeAt: #'data-lastIndexAsked' put: (self filteredElements indexOf: self selectedEntity ifAbsent: 1) asString;
		attributeAt: #'data-onLoadHook' put: self jsOnLoadHook;
		attributeAt: #'data-loadingstep' put: self listElementsDynamicalLoadingStep asString
]

{ #category : #accessing }
MDLNestedList >> shouldBeExpanded [
	^ shouldBeExpanded
]

{ #category : #accessing }
MDLNestedList >> shouldBeExpanded: anObject [
	shouldBeExpanded := anObject
]

{ #category : #hooks }
MDLNestedList >> states [
	self flag: #BECAREFUL.	"I am absolutly not sure we want to do this. I let it to try but it might be removed."
	^ Array with: self
]

{ #category : #accessing }
MDLNestedList >> strategy [
	^ strategy ifNil: [ strategy := MDLNestedListItemRenderAnchorStrategy for: self ]
]

{ #category : #accessing }
MDLNestedList >> strategy: anObject [
	strategy := anObject
]

{ #category : #researchField }
MDLNestedList >> withResearchField [
	self displayResearchField: true
]
