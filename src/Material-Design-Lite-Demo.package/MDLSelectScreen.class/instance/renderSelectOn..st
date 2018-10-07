demos
renderSelectOn: html
	html
		form: [ 
			html
				render:
					((MDLSelectWidget
						possibilities: #(1 2 3 4 5 5)
						inputLabel: 'Select Your Number'
						labelBlock: [ :number | 
							number = 5
								ifTrue: [ '0' ]
								ifFalse: [ (number - 1) greaseString ] ]
						callback: [ :input | 
							Transcript
								show: input;
								cr ]
						selectedObject: 3
						tooltip: 'description'
						sortBlock: [ :a :b | a <= b ])
						entryTooltip: [ :number | 'Choose number: ' , number asString ];
						yourself).
			html break.
			html mdlButton
				accentColor;
				raised;
				beSubmit;
				with: 'Submit' ]