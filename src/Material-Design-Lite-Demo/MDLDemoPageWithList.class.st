"
Description
--------------------

An abstract page to manage pages with list of examples to display.
"
Class {
	#name : #MDLDemoPageWithList,
	#superclass : #MDLDemoPage,
	#instVars : [
		'list',
		'selectedScreen'
	],
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #testing }
MDLDemoPageWithList class >> isAbstract [
	^ self = MDLDemoPageWithList
]

{ #category : #components }
MDLDemoPageWithList >> defaultList [
	^ (MDLNestedList elements: self sortedScreens)
		iconBlock: [ :class :renderer | 
			renderer anchor
				class: 'mdl-list-icon';
				callback: [ self select: class ];
				with: [ renderer image
						url: class iconUrl ] ];
		listStyle: #demo;
		format: #title;
		helpBlock: #description;
		actionBlock: [ :screen | self select: screen ];
		selectedEntity: self selectedScreen class;
		yourself
]

{ #category : #testing }
MDLDemoPageWithList >> hasScreenSelected [
	^ self selectedScreen isNotNil
]

{ #category : #hooks }
MDLDemoPageWithList >> initialRequest: aRequest [
	| consumer pageName |
	super initialRequest: aRequest.
	consumer := self requestContext consumer.
	
	"If we are at end, nothing to manage"
	consumer atEnd ifTrue: [ ^ self ].
	
	pageName := consumer peek asLowercase. "Do not make URLs case sensitive in that case"
	
	"Try to find a page corresponding"
	self sortedScreens
		detect: [ :each | each pathName asLowercase = pageName ]
		ifFound: [ :class | 
			self select: class.

			"If we find a page, we pop the subpart of the path corresponding to the page."
			consumer next ]
]

{ #category : #initialization }
MDLDemoPageWithList >> initialize [
	super initialize.
	self list: self defaultList
]

{ #category : #accessing }
MDLDemoPageWithList >> list [
	^ list
]

{ #category : #accessing }
MDLDemoPageWithList >> list: anObject [
	list := anObject
]

{ #category : #rendering }
MDLDemoPageWithList >> renderContentOn: html [
	html leftPanel
		class: 'mdl-components__nav';
		shadow: 4;
		with: [ html
				render: self defaultList;
				leftPanelResizer ].
	(html tag: 'main')
		class: 'mdl-components__pages';
		with: [ self renderPageContentOn: html ]
]

{ #category : #rendering }
MDLDemoPageWithList >> renderPageContentOn: html [
	self selectedScreen
		ifNil: [ html section
				class: 'mdl-doc';
				class: #'mdl-components__page';
				class: #'mdl-components__page-index';
				with: [ html section
						beCell: 12;
						with: [ html
								definitionList: [ html definitionTerm: self class pageName.
									html definitionData: [ self renderPageDescriptionOn: html ] ] ].
					html div class: 'mdl-components-img' ] ]
		ifNotNil: [ :screen | html render: screen ]
]

{ #category : #rendering }
MDLDemoPageWithList >> renderPageDescriptionOn: html [
	self subclassResponsibility
]

{ #category : #accessing }
MDLDemoPageWithList >> screens [
	^ self subclassResponsibility
]

{ #category : #actions }
MDLDemoPageWithList >> select: screen [
	self
		selectedScreen:
			(self selectedScreen class = screen
				ifTrue: [ nil ]
				ifFalse: [ screen new ])
]

{ #category : #accessing }
MDLDemoPageWithList >> selectedScreen [
	^ selectedScreen
]

{ #category : #accessing }
MDLDemoPageWithList >> selectedScreen: aScreen [
	selectedScreen := aScreen
]

{ #category : #accessing }
MDLDemoPageWithList >> sortedScreens [
	^ self screens sorted: [ :a :b | a title < b title ]
]

{ #category : #updating }
MDLDemoPageWithList >> updateUrl: aUrl [
	super updateUrl: aUrl.
	self selectedScreen ifNotNil: [ :screen | aUrl addToPath: screen pathName ]
]
