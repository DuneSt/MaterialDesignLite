"
A MDLStringColumnDescriptionTest is a test class for testing the behavior of MDLStringColumnDescription
"
Class {
	#name : #MDLStringColumnDescriptionTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Design-Lite-Widgets-Tests-Table'
}

{ #category : #test }
MDLStringColumnDescriptionTest >> testRenderHeadingOn [
	|columnDescription|
	columnDescription := MDLStringColumnDescription new
									title: 'non-numeric';
									yourself.
									
	self assert: [ :html | columnDescription renderHeadingOn: html ] generates: '<th id="id1" class="mdl-table-widget__cell--string mdl-data-table__cell--non-numeric">non-numeric</th>'
]

{ #category : #test }
MDLStringColumnDescriptionTest >> testRenderOn [
	|columnDescription|
	columnDescription := MDLStringColumnDescription new
									evaluation: [ :x | x asString ];
									yourself.
									
	self assert: [ :html | columnDescription render: 2 on: html ] generates: '<td id="id1" class="mdl-table-widget__cell--string mdl-data-table__cell--non-numeric">2</td>'
]
