rendering
renderPagesInfoOn: html
	html
		text:
			(String
				streamContents: [ :s | 
					s
						<< position;
						<< ' - ';
						<< self indexOfLastRowToShow;
						<< '  of ';
						<< rowsCache size ])