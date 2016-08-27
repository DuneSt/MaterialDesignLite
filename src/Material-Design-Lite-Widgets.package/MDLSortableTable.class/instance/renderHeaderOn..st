rendering
renderHeaderOn: aRenderer
	aRenderer tableHead: [ 
		aRenderer tableRow: [ 
			1 to: (header size) do: [ :i | 
				(header at: i) renderContentOn: aRenderer forTable: self columnIndex: i ] ] ]