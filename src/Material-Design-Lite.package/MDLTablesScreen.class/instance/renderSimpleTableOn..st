as yet unclassified
renderSimpleTableOn: html
	html div
		class: 'centered-content';
		class: 'mdl-typography--text-center';
		with:
			[ html mdlTable selectable;
				with:
					[ html
						tableHead:
							[ html
								tableRow:
									[ html mdlTableHeading: 'Text'.
									html mdlTableHeading: 'Text'.
									html tableHeading: 'Numbers'.
									html mdlTableHeading: 'Text' ] ].
					html
						tableBody:
							[ 3
								timesRepeat:
									[ html
										tableRow:
											[ html mdlTableCell: 'TableCell'.
											html mdlTableCell: 'TableCell'.
											html tableData: '40'.
											html mdlTableCell: 'TableCell' ] ] ] ].
			html paragraph: 'Data table' ].
		html
		preformatted:
			[ html code
				class: 'smalltalk';
				with: 'html mdlTable selectable;
	with:
		[ html
			tableHead:
				[ html
					tableRow:
						[ html mdlTableHeading: ''Text''.
						html mdlTableHeading: ''Text''.
						html tableHeading: ''Numbers''.
						html mdlTableHeading: ''Text'' ] ].
		html
			tableBody:
				[ 3
					timesRepeat:
						[ html
							tableRow:
								[ html mdlTableCell: ''TableCell''.
								html mdlTableCell: ''TableCell''.
								html tableData: ''40''.
								html mdlTableCell: ''TableCell'' ] ] ] ]' ]