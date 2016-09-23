code
renderPaginationOn: html
	html div
		style: 'text-align: left';
		with: [ html
				render:
					((MDLPaginationWidget newWithItems: self items)
						addHeading: 'First name';
						addHeading: 'Last name';
						pageSize: 1;
						yourself) ]