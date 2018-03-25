demos
renderAjaxRemovableChipOn: html
	html mdlChip
		ajaxDeleteCallback: [ 'Component deleted' crLog ] successHook: 'alert("Deleted")'; "successHook is optional."
		with: [ html mdlChipText: 'Example Chip' ]