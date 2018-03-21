rendering
tableCode
	^ 'html mdlTable shadow: 2; selectable; with: [ 
	html tableHead: [ 
		html tableRow: [ 
			html mdlTableHeading: ''Material''.
			html tableHeading: ''Quantity''.
			html tableHeading: ''Price'' ] ].
	html tableBody: [ 
		html tableRow: [ 
			html mdlTableCell: ''Acrylic (Transparent)''.
			html tableData: ''25''.
			html tableData: ''$2.90'' ].
		html tableRow: [ 
			html mdlTableCell: ''Plywood (Birch)''.
			html tableData: ''50''.
			html tableData: ''$1.25'' ].
		html tableRow: [ 
			html mdlTableCell: ''Laminate (Gold on Blue)''.
			html tableData: ''10''.
			html tableData: ''$2.35'' ] ] ]'