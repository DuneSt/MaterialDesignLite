"
A MDLTableWidgetTest is a test class for testing the behavior of MDLTableWidget
"
Class {
	#name : #MDLTableWidgetTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#instVars : [
		'table'
	],
	#category : #'Material-Design-Lite-Widgets-Tests-Table'
}

{ #category : #running }
MDLTableWidgetTest >> setUp [
	super setUp.
	table := MDLTableWidget new
]

{ #category : #test }
MDLTableWidgetTest >> testAddAjaxButtonColumnNamedIconNameOnClick [
	| onClickBlock lastColumnDescription |
	onClickBlock := [ :html :rowObject | html jQuery noop ].
	table addAjaxButtonColumnNamed: 'ajax' iconName: 'delete' onClick: onClickBlock.
	
	lastColumnDescription := table columnDescriptions last.
	self assert: lastColumnDescription class equals: MDLAjaxButtonColumnDescription.
	self assert: lastColumnDescription title equals: 'ajax'.
	self assert: lastColumnDescription iconName equals: 'delete'.
	self assert: lastColumnDescription onClickBlock equals: onClickBlock.
	self assert: lastColumnDescription tooltip isNil
]

{ #category : #test }
MDLTableWidgetTest >> testAddAjaxButtonColumnNamedIconNameOnClickTooltip [
	| onClickBlock lastColumnDescription |
	onClickBlock := [ :html :rowObject | html jQuery noop ].
	table addAjaxButtonColumnNamed: 'ajax' iconName: 'delete' onClick: onClickBlock tooltip: 'Example tooltip.'.
	
	lastColumnDescription := table columnDescriptions last.
	self assert: lastColumnDescription class equals: MDLAjaxButtonColumnDescription.
	self assert: lastColumnDescription title equals: 'ajax'.
	self assert: lastColumnDescription iconName equals: 'delete'.
	self assert: lastColumnDescription onClickBlock equals: onClickBlock.
	self assert: lastColumnDescription tooltip equals: 'Example tooltip.'
]

{ #category : #test }
MDLTableWidgetTest >> testAddAjaxButtonColumnWithIconNameOnClickTooltip [
	| onClickBlock lastColumnDescription |
	onClickBlock := [ :html :rowObject | html jQuery noop ].
	table addAjaxButtonColumnWithIconName: 'delete' onClick: onClickBlock tooltip: 'Example tooltip.'.
	
	lastColumnDescription := table columnDescriptions last.
	self assert: lastColumnDescription class equals: MDLAjaxButtonColumnDescription.
	self assert: lastColumnDescription title equals: ''.
	self assert: lastColumnDescription iconName equals: 'delete'.
	self assert: lastColumnDescription onClickBlock equals: onClickBlock.
	self assert: lastColumnDescription tooltip equals: 'Example tooltip.'
]

{ #category : #test }
MDLTableWidgetTest >> testAddButtonColumnNamedIconNameOnClickTooltip [
	| onClickBlock lastColumnDescription |
	onClickBlock := [  ].
	table addButtonColumnNamed: 'test' iconName: 'delete' onClick: onClickBlock tooltip: 'Example tooltip.'.
	
	lastColumnDescription := table columnDescriptions last.
	self assert: lastColumnDescription class equals: MDLButtonColumnDescription.
	self assert: lastColumnDescription title equals: 'test'.
	self assert: lastColumnDescription iconName equals: 'delete'.
	self assert: lastColumnDescription onClickBlock equals: onClickBlock.
	self assert: lastColumnDescription tooltip equals: 'Example tooltip.'
]

{ #category : #test }
MDLTableWidgetTest >> testAddButtonColumnWithIconNameOnClickTooltip [
	| onClickBlock lastColumnDescription |
	onClickBlock := [  ].
	table addButtonColumnWithIconName: 'delete' onClick: onClickBlock tooltip: 'Example tooltip.'.
	
	lastColumnDescription := table columnDescriptions last.
	self assert: lastColumnDescription class equals: MDLButtonColumnDescription.
	self assert: lastColumnDescription title equals: ''.
	self assert: lastColumnDescription iconName equals: 'delete'.
	self assert: lastColumnDescription onClickBlock equals: onClickBlock.
	self assert: lastColumnDescription tooltip equals: 'Example tooltip.'
]

{ #category : #test }
MDLTableWidgetTest >> testAddColumn [
	| column other |
	self assert: table columnDescriptions isEmpty.
	
	column := MDLStringColumnDescription new
							title: 'test';
							evaluation: [ :x | x asString ];
							yourself.
	
	table addColumn: column.
							
	self assert: table columnDescriptions size equals: 1.
	self assert: table columnDescriptions first == column.
	
	other := MDLNumericColumnDescription new
							title: 'test2';
							evaluation: [ :x | x asInteger ];
							yourself.
	
	table addColumn: other.
	
	self assert: table columnDescriptions size equals: 2.
	"Check second column added at the end."
	self assert: table columnDescriptions last == other.
]

{ #category : #test }
MDLTableWidgetTest >> testAddNumericColumnNamedEvaluated [
	| evaluationBlock lastColumnDescription |
	evaluationBlock := [ :x | x asInteger ].
	table addNumericColumnNamed: 'numeric' evaluated: evaluationBlock.
	
	lastColumnDescription := table columnDescriptions last.
	self assert: lastColumnDescription class equals: MDLNumericColumnDescription.
	self assert: lastColumnDescription title equals: 'numeric'.
	self assert: lastColumnDescription evaluation equals: evaluationBlock.
]

{ #category : #test }
MDLTableWidgetTest >> testAddStringColumnNamedEvaluated [
	| evaluationBlock lastColumnDescription |
	evaluationBlock := [ :x | x asString ].
	table addStringColumnNamed: 'string' evaluated: evaluationBlock.
	
	lastColumnDescription := table columnDescriptions last.
	self assert: lastColumnDescription class equals: MDLStringColumnDescription.
	self assert: lastColumnDescription title equals: 'string'.
	self assert: lastColumnDescription evaluation equals: evaluationBlock.
]

{ #category : #test }
MDLTableWidgetTest >> testRenderContentOn [
	self assert: [ :html | html render: table ] generatedIncludes: 'class="mdl-data-table mdl-js-data-table mdl-table-widget"'
]
