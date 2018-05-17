tests
testAjaxDeleteCallback
	self
		assert: [ :html | html mdlChip ajaxDeleteCallback: [ 'test' crLog ] ]
		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<span onclick=\"$.ajax({' '.remove();' '<i class=\"material-icons\">cancel</i></span>')