Class {
	#name : #MDLSortableTableHeaderTests,
	#superclass : #TestCase,
	#instVars : [
		'header'
	],
	#category : 'Material-Design-Lite-Widgets-Tests-Table'
}

{ #category : #running }
MDLSortableTableHeaderTests >> setUp [
	super setUp.
	header := MDLSortableTableHeader for: #('test' 'material' 'design' 'lite')
]

{ #category : #tests }
MDLSortableTableHeaderTests >> testGoToNextState [
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted.
	header goToNextState.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted defaultNextState.
	header goToNextState.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted defaultNextState defaultNextState.
	header goToNextState.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted
	
]

{ #category : #tests }
MDLSortableTableHeaderTests >> testIsInitializedWithUnsortedState [
	self assert: MDLSortableTableHeader new currentState class equals: MDLSortableTableHeaderElementUnsorted
]

{ #category : #tests }
MDLSortableTableHeaderTests >> testUnsort [
	header goToNextState.
	self flag: #clean. "#deny:equals: was introduced in P6. When P5 support will be dorpped, uses #deny:equals:."
	self deny: header currentState class == MDLSortableTableHeaderElementUnsorted.
	header unsort.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted
]
