"
A MDLNumericColumnDescriptionTest is a test class for testing the behavior of MDLNumericColumnDescription
"
Class {
	#name : #MDLNumericColumnDescriptionTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Design-Lite-Widgets-Tests-Table'
}

{ #category : #test }
MDLNumericColumnDescriptionTest >> testRenderHeadingOn [
	|columnDescription|
	columnDescription := MDLNumericColumnDescription new
									title: 'numeric'
									yourself.
									
	self assert: [ :html | columnDescription renderHeadingOn: html ] generates: '<th id="id1" class="mdl-table-widget__cell--numeric">numeric</th>'
]

{ #category : #test }
MDLNumericColumnDescriptionTest >> testRenderOn [
	|columnDescription|
	columnDescription := MDLNumericColumnDescription new
									evaluation: [ :x | x * 2 ];
									yourself.
									
	self assert: [ :html | columnDescription render: 2 on: html ] generates: '<td id="id1" class="mdl-table-widget__cell--numeric">4</td>'
]
