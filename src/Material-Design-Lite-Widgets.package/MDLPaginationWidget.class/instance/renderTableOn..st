rendering
renderTableOn: html
	| table |
	table := html mdlTable.
	self addPropertiesToBrush: table.
	table
		with: [ self renderTableHeadOn: html.
			html tableBody with: [ self renderTableBodyOn: html ] ].
	html div
		class: 'mdl-pagination__arrows';
		with: [ self renderTableArrowsOn: html ]