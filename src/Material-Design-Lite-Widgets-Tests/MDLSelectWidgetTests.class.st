Class {
	#name : #MDLSelectWidgetTests,
	#superclass : #MDLAbstractSeasideTestCase,
	#instVars : [
		'select'
	],
	#category : 'Material-Design-Lite-Widgets-Tests-Form'
}

{ #category : #helpers }
MDLSelectWidgetTests >> defaultPossibilities [
	^ #(1 2 3 4 5 5)
]

{ #category : #running }
MDLSelectWidgetTests >> setUp [
	super setUp.
	select := MDLSelectWidget new.
	select possibilities: self defaultPossibilities
]

{ #category : #tests }
MDLSelectWidgetTests >> testChoosingText [
	select choosingText: 'This is a test'.
	self assert: [ :html | html render: select ] generatedIncludes: '<label class="mdl-textfield__label" for="id2">This is a test</label>'
]

{ #category : #tests }
MDLSelectWidgetTests >> testDescription [
	select description: 'Test'.
	self assert: [ :html | html render: select ] generatedIncludes: '<span class="mdl-tooltip mdl-tooltip--large" for="id2">Test</span>'
]

{ #category : #tests }
MDLSelectWidgetTests >> testLabelFor [
	select
		labelBlock: [ :number | 
			number = 5
				ifTrue: [ '0' ]
				ifFalse: [ (number - 1) greaseString ] ].
	self assert: (select labelFor: 5) equals: '0'.
	self assert: (select labelFor: 4) equals: '3'.
	select labelBlock: nil.
	self assert: (select labelFor: 5) equals: '5'.
	self assert: (select labelFor: 4) equals: '4'
]

{ #category : #tests }
MDLSelectWidgetTests >> testLabelForVersion [
	select labelBlock: nil.
	self assert: (select labelFor: 5 version: 0) equals: '5'.
	self assert: (select labelFor: 4 version: 0) equals: '4'.
	self assert: (select labelFor: 5 version: 2) equals: '5 (2)'.
	self assert: (select labelFor: 4 version: 3) equals: '4 (3)'
]

{ #category : #tests }
MDLSelectWidgetTests >> testLabels [
	select
		labelBlock: [ :number | 
			number = 5
				ifTrue: [ '0' ]
				ifFalse: [ (number - 1) greaseString ] ].
	self
		assert: [ :html | html render: select ]
		generatedIncludes:
			'<li class="mdl-menu__item" id="id2entry0">0</li><li class="mdl-menu__item" id="id2entry1">1</li><li class="mdl-menu__item" id="id2entry2">2</li><li class="mdl-menu__item" id="id2entry3">3</li><li class="mdl-menu__item" id="id2entry0 (1)">0 (1)</li><li class="mdl-menu__item" id="id2entry0 (2)">0 (2)</li>'
]

{ #category : #tests }
MDLSelectWidgetTests >> testList [
	select list: self defaultPossibilities.
	self
		assert: [ :html | html render: select ]
		generatedIncludes:
			'<li class="mdl-menu__item" id="id2entry1">1</li><li class="mdl-menu__item" id="id2entry2">2</li><li class="mdl-menu__item" id="id2entry3">3</li><li class="mdl-menu__item" id="id2entry4">4</li><li class="mdl-menu__item" id="id2entry5">5</li><li class="mdl-menu__item" id="id2entry5 (1)">5 (1)</li>'
]

{ #category : #tests }
MDLSelectWidgetTests >> testPossibilities [
	self
		assert: [ :html | html render: select ]
		generatedIncludes:
			'<li class="mdl-menu__item" id="id2entry1">1</li><li class="mdl-menu__item" id="id2entry2">2</li><li class="mdl-menu__item" id="id2entry3">3</li><li class="mdl-menu__item" id="id2entry4">4</li><li class="mdl-menu__item" id="id2entry5">5</li><li class="mdl-menu__item" id="id2entry5 (1)">5 (1)</li>'
]

{ #category : #tests }
MDLSelectWidgetTests >> testSelected [
	select selected: 3.
	self assert: [ :html | html render: select ] generatedIncludes: 'value="3"'
]

{ #category : #tests }
MDLSelectWidgetTests >> testSortBlock [
	select
		labelBlock: [ :number | 
			number = 5
				ifTrue: [ '0' ]
				ifFalse: [ (number - 1) greaseString ] ];
		sortBlock: [ :a :b | a <= b ].
	self
		assert: [ :html | html render: select ]
		generatedIncludes:
			'<li class="mdl-menu__item" id="id2entry0">0</li><li class="mdl-menu__item" id="id2entry0 (1)">0 (1)</li><li class="mdl-menu__item" id="id2entry0 (2)">0 (2)</li><li class="mdl-menu__item" id="id2entry1">1</li><li class="mdl-menu__item" id="id2entry2">2</li><li class="mdl-menu__item" id="id2entry3">3</li>'
]

{ #category : #tests }
MDLSelectWidgetTests >> testStandardSorting [
	select
		labelBlock: [ :number | 
			number = 5
				ifTrue: [ '0' ]
				ifFalse: [ (number - 1) greaseString ] ];
		standardSorting.
	self
		assert: [ :html | html render: select ]
		generatedIncludes:
			'<li class="mdl-menu__item" id="id2entry0">0</li><li class="mdl-menu__item" id="id2entry0 (1)">0 (1)</li><li class="mdl-menu__item" id="id2entry0 (2)">0 (2)</li><li class="mdl-menu__item" id="id2entry1">1</li><li class="mdl-menu__item" id="id2entry2">2</li><li class="mdl-menu__item" id="id2entry3">3</li>'
]
