as yet unclassified
renderNumbersOn: html
	html tableBody: [ 
		1 to: 6 do: [ :i |
			html tableRow: [ 
				(calendar daysForWeek: i)
					do: [ :aNumber | 
						html tableData: [ 
							html mdlButton rippleEffect icon
								class: 'number';
								with: aNumber asString 
						] 
					] 
			].
		] 
	]