tests
testDeleteCallback
	self
		assert: [ :html | html mdlChip deleteCallback: [ 'test' crLog ] ]
		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<a class=\"mdl-chip__action\"' '"><i class=\"material-icons\">cancel</i></a>')