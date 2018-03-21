code
simpleListCode
	^ 'html mdlList: [ 
	#(''Bryan Cranston'' ''Aaron Paul'' ''Bob Odenkirk'') do: 
		[ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ]'