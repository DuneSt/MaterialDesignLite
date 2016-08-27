rendering
renderPagesInfoOn: html
	html
		text:
			(String
				streamContents: [ :s | 
					s
						<< position;
						<< ' - ';
						<< (position + elementsToShow - 1);
						<< '  of ';
						<< self rows size ])