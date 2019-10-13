"
A MDLAjaxButtonColumnDescriptionTest is a test class for testing the behavior of MDLAjaxButtonColumnDescription
"
Class {
	#name : #MDLAjaxButtonColumnDescriptionTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Design-Lite-Widgets-Tests-Table'
}

{ #category : #test }
MDLAjaxButtonColumnDescriptionTest >> testRenderOn [
	|columnDescription|
	columnDescription := MDLAjaxButtonColumnDescription new
									iconName: 'delete';
									yourself.
									
	self assert: [ :html | columnDescription render: #useless on: html ] generates: '<td><label class="mdl-button mdl-js-button mdl-table-widget__cell--button mdl-button--icon" id="id1" onclick="$.noop" type="submit"><i class="material-icons">delete</i></label></td>'
]

{ #category : #test }
MDLAjaxButtonColumnDescriptionTest >> testRenderOnWithTooltip [
	|columnDescription|
	columnDescription := MDLAjaxButtonColumnDescription new
									iconName: 'delete';
									tooltip: 'Delete the row.';
									yourself.
									
	self assert: [ :html | columnDescription render: #useless on: html ] generates: '<td><label class="mdl-button mdl-js-button mdl-table-widget__cell--button mdl-button--icon" id="id1" onclick="$.noop" type="submit"><i class="material-icons">delete</i></label></td><span class="mdl-tooltip" for="id1">Delete the row.</span>'
]
