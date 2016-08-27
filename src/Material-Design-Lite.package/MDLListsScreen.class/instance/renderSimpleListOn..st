rendering
renderSimpleListOn: html
	html div
		class: 'centered-content';
		class: 'mdl-typography--text-center';
		with: [ 
					html
						mdlList: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk') do: [ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ].
					html paragraph: 'Simple List' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlList: [ 
	#(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'') do: 
		[ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ]' ]