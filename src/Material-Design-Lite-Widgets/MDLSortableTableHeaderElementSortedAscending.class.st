Class {
	#name : #MDLSortableTableHeaderElementSortedAscending,
	#superclass : #MDLSortableTableHeaderState,
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #accessing }
MDLSortableTableHeaderElementSortedAscending class >> defaultNextState [
	^ MDLSortableTableHeaderElementSortedDescending
]

{ #category : #rendering }
MDLSortableTableHeaderElementSortedAscending >> renderContentOn: html forTable: table columnIndex: i header: header [
	(header headingCellOn: html)
		sortedAscending;
		onClick:
			(html jQuery ajax
				callback: [ table sortDescendingAtRow: i.
					header goToNextState ];
				onSuccess: (table ajaxUpdateScriptFrom: html));
		with: header cells
]
