Class {
	#name : #MDLNestedListTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#instVars : [
		'list'
	],
	#category : #'Material-Design-Lite-Widgets-Tests-List'
}

{ #category : #helpers }
MDLNestedListTest >> childrenBlockForSampleElements [
	^ [ :each | self recursivelyFind: each in: self sampleElements ]
]

{ #category : #helpers }
MDLNestedListTest >> recursivelyFind: each in: dictionary [
	^ dictionary
		at: each
		ifPresent: [ :res | 
			res isDictionary
				ifTrue: [ res keys ]
				ifFalse: [ res ] ]
		ifAbsent: [ dictionary
				valuesDo: [ :coll | 
					coll isDictionary
						ifTrue: [ (self recursivelyFind: each in: coll) ifNotEmpty: [ :res | ^ res ] ] ].
			#() ]
]

{ #category : #helpers }
MDLNestedListTest >> sampleElements [
	^ OrderedDictionary with: 1 -> #(2 3 4) with: 5 -> #(6 7 8) with: 9 -> (OrderedDictionary with: 10 -> #(11 12 13) with: 14 -> #(15 16 17))
]

{ #category : #running }
MDLNestedListTest >> setUp [
	super setUp.
	list := MDLNestedList new
]

{ #category : #tests }
MDLNestedListTest >> testElementsDisplayListWithLastElementSelected [
	list elements: (1 to: list listMaxSize * 2 ).
	list selectedEntity: list listMaxSize * 2.
	self assert: list elementsDisplayList size equals: list listMaxSize
]

{ #category : #tests }
MDLNestedListTest >> testElementsDisplayListWithLessThanListSize [
	list elements: (1 to: list listMaxSize).
	self assert: list elementsDisplayList size equals: list listMaxSize
]

{ #category : #tests }
MDLNestedListTest >> testElementsDisplayListWithMoreThanListSize [
	list elements: (1 to: list listMaxSize * 2 ).
	self assert: list elementsDisplayList size equals: list listMaxSize
]

{ #category : #tests }
MDLNestedListTest >> testIconBlockIsRenderedIfNeeded [
	list elements: self sampleElements keys.
	list iconBlock: [ :item :html | html mdlIcon: 'mood' ].
	self assert: [ :html | html render: list ] generatedIncludes: '<i class="material-icons">mood</i>'.
	list iconBlock: nil.
	self deny: [ :html | html render: list ] generatedIncludes: '<i class="material-icons">mood</i>'.
]

{ #category : #tests }
MDLNestedListTest >> testIndexOfRootElementContainingSelectedEntity [
	list elements: self sampleElements keys.
	list childrenBlock: self childrenBlockForSampleElements.
	list selectedEntity: 1.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 1.
	list selectedEntity: 5.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 2
]

{ #category : #tests }
MDLNestedListTest >> testIndexOfRootElementContainingSelectedEntityAtSecondLevel [
	list elements: self sampleElements keys.
	list childrenBlock: self childrenBlockForSampleElements.
	list selectedEntity: 2.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 1.
	list selectedEntity: 8.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 2
]

{ #category : #tests }
MDLNestedListTest >> testIndexOfRootElementContainingSelectedEntityAtThirdLevel [
	list elements: self sampleElements keys.
	list childrenBlock: self childrenBlockForSampleElements.
	list selectedEntity: 12.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 3
]

{ #category : #tests }
MDLNestedListTest >> testIndexOfRootElementContainingSelectedEntityIfSelectedEntityIsNil [
	list elements: self sampleElements keys.
	list childrenBlock: self childrenBlockForSampleElements.
	list selectedEntity: nil.
	self assert: list indexOfRootElementContainingSelectedEntity equals: 0
]

{ #category : #tests }
MDLNestedListTest >> testJsOnLoadHook [
	list onLoadHook: 'console.log("test")' js.
	self assert: (list jsOnLoadHook isKindOf: JSStream).
	self assert: list jsOnLoadHook contents equals: 'console.log("test")'.
	list onLoadHook: 'console.log("test")'.
	self assert: (list jsOnLoadHook isKindOf: JSStream).
	self assert: list jsOnLoadHook contents equals: 'console.log("test")'
]

{ #category : #tests }
MDLNestedListTest >> testRightIconBlockIsRenderedIfNeeded [
	list elements: self sampleElements keys.
	list rightIconBlock: [ :item :html | html mdlIcon: 'mood' ].
	self assert: [ :html | html render: list ] generatedIncludes: '<i class="material-icons">mood</i>'.
	list rightIconBlock: nil.
	self deny: [ :html | html render: list ] generatedIncludes: '<i class="material-icons">mood</i>'.
]

{ #category : #tests }
MDLNestedListTest >> testWithResearchField [
	list displayResearchField: false.
	list withResearchField.
	self assert: list displayResearchField
]
