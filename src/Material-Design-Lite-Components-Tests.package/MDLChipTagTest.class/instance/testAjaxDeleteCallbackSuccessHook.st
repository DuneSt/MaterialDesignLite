tests
testAjaxDeleteCallbackSuccessHook
	self
		assert: [ :html | html mdlChip ajaxDeleteCallback: [ 'test' crLog ] successHook: 'console.log(this)' ]
		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<span onclick=\"$.ajax({' '.remove();' '<i class=\"material-icons\">cancel</i></span>' 'console.log(this)')