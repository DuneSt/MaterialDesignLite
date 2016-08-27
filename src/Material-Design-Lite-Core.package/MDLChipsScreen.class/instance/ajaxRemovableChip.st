code
ajaxRemovableChip
	^ 'Deletable Ajax Chip'
		-> [ :html | 
			html mdlChip
				ajaxDeleteCallback: [ 'Component deleted' crLog ] successHook: 'alert("Deleted")';	"successHook is optional."
				with: 'Example Chip'. ]