rendering
renderPaginationOn: html
	| myColl |
	myColl := 201 to: 640.
	paginationWidget
		ifNil: [ paginationWidget := (MDLPaginationComponent numberOfPages: [ (myColl size / 20) roundUpTo: 1 ]) "Note the use of a block. If my collection change, the number of pages will be updated."
				adjacentsPagesToShow: 3;
				yourself	 ].
	html
		div: [ html
				mdlGrid: [ | currentPage |
					currentPage := paginationWidget currentPage.
					(currentPage - 1) * 20 + 1 to: currentPage * 20 do: [ :ind | 
						html mdlCell
							class: 'grid-cell-demo';
							size: 2;
							with: (myColl at: ind) ] ].
			html render: paginationWidget ]