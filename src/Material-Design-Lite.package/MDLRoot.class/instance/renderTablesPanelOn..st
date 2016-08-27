rendering
renderTablesPanelOn: html
	html mdlTabsPanel
		id: 'tables';
		with: [ 
			html heading level4 with: 'Simple'.
			html mdlTable shadow: 2; with: [ 
				html tableHead: [ 
					html tableRow: [ 
						html mdlTableHeading: 'Text'.
						html mdlTableHeading: 'Text'.
						html tableHeading: 'Numbers'.
						html mdlTableHeading: 'Text' ] ].
				html tableBody: [ 
					3 timesRepeat: [ 
						html tableRow: [ 
							html mdlTableCell: 'TableCell'.
							html mdlTableCell: 'TableCell'.
							html tableData: '40'.
							html mdlTableCell: 'TableCell' ] ] ] ].
			html break.
			html heading level4; with: 'Table design with checkbox'.
			html mdlTable shadow: 2; selectable; with: [ 
				html tableHead: [ 
					html tableRow: [ 
						html mdlTableHeading: 'Text'.
						html tableHeading: 'Number'.
						html tableHeading: 'Number' ] ].
				html tableBody: [ 
					3 timesRepeat: [ 
						html tableRow: [ 
							html mdlTableCell: 'Table cell'.
							html tableData: 255.
							html tableData: 190 ] ] ] ] ]