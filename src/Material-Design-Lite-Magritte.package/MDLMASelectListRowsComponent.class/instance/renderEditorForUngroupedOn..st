rendering
renderEditorForUngroupedOn: html
	html
		render:
			((MDLSelectWidget
				possibilities: self options
				inputLabel: self magritteDescription label
				labelBlock: [ :anOption | anOption ]
				callback: [ :anOption | 1 halt ]) id: self labelId)