rendering
renderHeaderOn: html
	html
		tableHead: [ html tableRow: [ header doWithIndex: [ :head :i | head renderContentOn: html forTable: self columnIndex: i ] ] ]