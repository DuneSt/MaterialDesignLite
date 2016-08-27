as yet unclassified
renderButtonsOn: html
	html div 
		with: [
			self buttons 
				do: [ :each |
					(each == buttons last ifTrue: [ html mdlButton raised; primaryColor ]
					ifFalse: [html mdlButton])
						accessKey: each value first;
						callback: [ self execute: each key ];
						text: each value ] ]