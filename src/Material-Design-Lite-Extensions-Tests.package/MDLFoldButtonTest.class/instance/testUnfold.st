tests
testUnfold
	self
		deny: [ :html | 
			html
				render:
					(MDLFoldButton new
						divId: '#test';
						unfold;
						yourself) ]
		generatedIncludes: 'document.getElementById(''test'').style.width=''0'';'