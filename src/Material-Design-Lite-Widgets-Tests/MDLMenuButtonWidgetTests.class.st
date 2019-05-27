Class {
	#name : #MDLMenuButtonWidgetTests,
	#superclass : #SGTAbstractSeasideTestCase,
	#instVars : [
		'menu'
	],
	#category : #'Material-Design-Lite-Widgets-Tests-Menu'
}

{ #category : #running }
MDLMenuButtonWidgetTests >> setUp [
	super setUp.
	menu := MDLMenuButtonWidget new
		objectsPossibilities: #('material' 'design' 'lite');
		yourself
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testButtonContents [
	menu buttonContent: 'test'.
	self assert: [ :html | menu renderButtonContentOn: html ] generates: 'test'.
	menu buttonContent: [ :html | html mdlIcon: 'mood' ].
	self assert: [ :html | menu renderButtonContentOn: html ] generates: '<i class="material-icons">mood</i>'
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testDefaultDescriptionPositionAtBottom [
	self assert: menu descriptionPosition equals: #bottom
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testDescriptionAtBottom [
	menu descriptionAtBottom.
	
	self assert: menu descriptionPosition equals: #bottom
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testDescriptionAtLeft [
	menu descriptionAtLeft.
	menu description: 'Description'.
	self assert: menu descriptionPosition equals: #left.
	self assert: [ :html | html render: menu ] generatedIncludes: 'mdl-tooltip--left'
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testDescriptionAtRight [
	menu descriptionAtRight.
	self assert: menu descriptionPosition equals: #right
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testDescriptionAtTop [
	menu descriptionAtTop.
	self assert: menu descriptionPosition equals: #top
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testLabelFor [
	menu textBlock: nil.
	self assert: (menu labelFor: 3) equals: '3'.
	menu textBlock: [ :e | e asUppercase ].
	self assert: (menu labelFor: 'test') equals: 'TEST'.
	menu textBlock: #asUppercase.
	self assert: (menu labelFor: 'test') equals: 'TEST'
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testObjectsPossibilitiesWithLabel [
	menu textBlock: #asUppercase.
	menu sortBlock: [ :a :b | a < b ].
	self
		assert: menu objectsPossibilitiesWithLabel
		equals:
			{('DESIGN' -> 'design').
			('LITE' -> 'lite').
			('MATERIAL' -> 'material')}.
	menu sortBlock: [ :a :b | b < a ].
	self
		assert: menu objectsPossibilitiesWithLabel
		equals:
			{('MATERIAL' -> 'material').
			('LITE' -> 'lite').
			('DESIGN' -> 'design')}
]

{ #category : #tests }
MDLMenuButtonWidgetTests >> testSelectedObject [
	menu selectedObject: 'material'.
	self assert: [ :html | html render: menu ] generatedIncludes: '>material<i class="material-icons">arrow_drop_down</i>'.
	
	menu selectedObject: 'lite'.
	self assert: [ :html | html render: menu ] generatedIncludes: '>lite<i class="material-icons">arrow_drop_down</i>'
]
