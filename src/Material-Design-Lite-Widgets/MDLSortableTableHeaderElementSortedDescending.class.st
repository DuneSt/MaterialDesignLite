Class {
	#name : #MDLSortableTableHeaderElementSortedDescending,
	#superclass : #MDLSortableTableHeaderState,
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #accessing }
MDLSortableTableHeaderElementSortedDescending class >> defaultNextState [
	^ MDLSortableTableHeaderElementUnsorted
]

{ #category : #rendering }
MDLSortableTableHeaderElementSortedDescending >> renderContentOn: html forTable: table columnIndex: i header: header [
	(header headingCellOn: html)
		sortedDescending;
		onClick:
			(html jQuery ajax
				callback: [ table unsort.
					header goToNextState ];
				onSuccess: (table ajaxUpdateScriptFrom: html));
		with: header cells
]
