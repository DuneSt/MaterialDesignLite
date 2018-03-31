demos
renderSortedTableOn: html
	html div
		style: 'width: 800px;';
		with:
			(MDLSortableTable new
				header: {'Class' . 'SuperClass' . 'Number of subclasses'};
				rows: [ WAObject allSubclasses
						collect: [ :class | 
							{class printString.
							class superclass printString.
							class subclasses size} ] ];
				rowsPerPagePossibilities: #(10 50 100 200))