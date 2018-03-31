demos
renderAutoSubmitSelectOn: html
	html
		form:
			((MDLSelectWidget
				possibilities: #(1 2 3 4 5 5)
				inputLabel: 'Select Your Number'
				labelBlock: [ :number | 
					number = 5
						ifTrue: [ '0' ]
						ifFalse: [ (number - 1) greaseString ] ]
				callback: [ :input | selectedEntity := input ]
				selectedObject: selectedEntity)
				beAutoSubmit;
				yourself).
	selectedEntity ifNotNil: [ :entity |  html div mdlTextColorPrimary; with: 'Selected: ' , entity asString ]