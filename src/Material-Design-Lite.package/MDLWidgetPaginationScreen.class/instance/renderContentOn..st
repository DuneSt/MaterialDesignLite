rendering
renderContentOn: html
	html
		render:
			((MDLPaginationWidget newWithItems: self items)
				addHeading: 'First name';
				addHeading: 'Last name';
				pageSize: 1;
				yourself)