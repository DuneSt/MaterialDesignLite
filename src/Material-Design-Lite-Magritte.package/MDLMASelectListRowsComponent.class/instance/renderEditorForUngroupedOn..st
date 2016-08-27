rendering
renderEditorForUngroupedOn: html
	html render:
			((MDLMenuButtonWidget
				possibilities: self options
				label: #asString
				action: [ :o | Transcript crShow: o asString ]
				choosingText: self magritteDescription label) id: self labelId)