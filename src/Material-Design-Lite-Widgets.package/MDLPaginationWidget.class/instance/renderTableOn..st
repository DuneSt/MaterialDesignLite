rendering
renderTableOn: html
	| table |
	table := html mdlTable.
	self addPropertiesToBrush: table.
	table
		with: [ self renderTableHeadOn: html.
			html tableBody
				id: (tableBodyId := html nextId);
				with: [ self renderTableBodyOn: html ] ].
	html div
		class: 'mdl-pagination__arrows';
		id: (arrowsId := html nextId);
		with: [ self renderTableArrowsOn: html ]