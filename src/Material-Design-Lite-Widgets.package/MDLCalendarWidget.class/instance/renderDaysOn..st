private-rendering
renderDaysOn: html
	html tableColumnGroup: [ 1 to: 7 do: [ :i | html tableColumn width: '14,3%' ] ].
	html
		tableHead: [ html
				tableRow: [ self daysList
						do: [ :day | 
							html tableHeading
								style: 'color: rgba(0,0,0,0.5)';
								with: day ] ] ]