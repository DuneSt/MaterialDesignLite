demos
renderSimpleListOn: html
	html mdlList
		style: 'width: 300px';
		with: [ 
			#('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk') do: [ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ]