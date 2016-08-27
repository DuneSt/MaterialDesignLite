rendering
renderHeaderOn: html
	html tableHead: [ 
		html tableRow: [ 
			1 to: (header size) do: [ :i | 
				(header at: i) renderContentOn: html forTable: self columnIndex: i ] ] ]