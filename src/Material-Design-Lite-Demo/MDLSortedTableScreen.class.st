"
A widget to get a paginated table with a sort function.
"
Class {
	#name : #MDLSortedTableScreen,
	#superclass : #MDLWidgetDemo,
	#category : #'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLSortedTableScreen class >> icon [
	^ #comptablesPng
]

{ #category : #accessing }
MDLSortedTableScreen class >> title [
	^ 'Sorted Table'
]

{ #category : #rendering }
MDLSortedTableScreen >> renderScreenContentOn: html [
	self render: self table on: html
]

{ #category : #demos }
MDLSortedTableScreen >> renderSortedTableOn: html [
	html div
		style: 'width: 800px;';
		with:
			(MDLSortableTable new
				header: {'Class' . 'SuperClass' . (MDLSortableTableHeaderNumeric for: 'Number of subclasses')};
				rows: [ WAObject allSubclasses
						collect: [ :class | 
							{class printString.
							class superclass printString.
							class subclasses size} ] ];
				rowsPerPagePossibilities: #(10 50 100 200))
]

{ #category : #sections }
MDLSortedTableScreen >> table [
	^ OrderedDictionary new
		add: 'Sorted Table Widget' -> #renderSortedTableOn:;
		yourself
]
