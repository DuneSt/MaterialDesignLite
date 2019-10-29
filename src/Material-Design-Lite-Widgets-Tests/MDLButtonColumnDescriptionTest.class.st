"
A MDLButtonColumnDescriptionTest is a test class for testing the behavior of MDLButtonColumnDescription
"
Class {
	#name : #MDLButtonColumnDescriptionTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Design-Lite-Widgets-Tests-Table'
}

{ #category : #test }
MDLButtonColumnDescriptionTest >> testRenderHeadingOn [
	|columnDescription|
	columnDescription := MDLButtonColumnDescription new
									title: 'callback';
									yourself.
									
	self assert: [ :html | columnDescription renderHeadingOn: html ] generates: '<th id="id1" class="mdl-table-widget__cell--button mdl-data-table__cell--non-numeric">callback</th>'
]

{ #category : #test }
MDLButtonColumnDescriptionTest >> testRenderOn [
	|columnDescription|
	columnDescription := MDLButtonColumnDescription new
									iconName: 'delete';
									yourself.
									
	self assert: [ :html | columnDescription render: #useless on: html ] generates: '<td class="mdl-table-widget__cell--button"><a class="mdl-button mdl-js-button mdl-button--icon" id="id1" href="/?2"><i class="material-icons">delete</i></a></td>'
]

{ #category : #test }
MDLButtonColumnDescriptionTest >> testRenderOnWithTooltip [
	|columnDescription|
	columnDescription := MDLButtonColumnDescription new
									iconName: 'delete';
									tooltip: 'Removes the row on server-side.';
									yourself.
									
	self assert: [ :html | columnDescription render: #useless on: html ] generates: '<td class="mdl-table-widget__cell--button"><a class="mdl-button mdl-js-button mdl-button--icon" id="id1" href="/?2"><i class="material-icons">delete</i></a></td><span class="mdl-tooltip" for="id1">Removes the row on server-side.</span>'
]
