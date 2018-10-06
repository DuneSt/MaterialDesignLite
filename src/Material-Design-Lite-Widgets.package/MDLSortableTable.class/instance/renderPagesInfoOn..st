rendering
renderPagesInfoOn: html
	html
		text:
			(String
				streamContents: [ :s | 
					s
						print: position;
						nextPutAll: ' - ';
						print: self indexOfLastRowToShow;
						nextPutAll: ' of ';
						print: rowsCache size ])