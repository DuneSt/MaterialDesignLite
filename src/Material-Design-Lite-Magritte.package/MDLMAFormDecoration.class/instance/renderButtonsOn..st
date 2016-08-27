as yet unclassified
renderButtonsOn: html
	html mdlGrid 
		with: [
			html mdlLayoutSpacer .
			html mdlCell: [ 
				self buttons 
					do: [ :each |
						(each == buttons last ifTrue: [ html mdlButton raised; primaryColor ]
						ifFalse: [html mdlButton])
							style: 'margin: 5px;';
							accessKey: each value first;
							callback: [ self execute: each key ];
							text: each value ] ] size: 6 ]