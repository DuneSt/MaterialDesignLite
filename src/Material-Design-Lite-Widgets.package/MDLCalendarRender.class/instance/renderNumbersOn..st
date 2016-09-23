as yet unclassified
renderNumbersOn: html
	| numbers index |
	numbers := self computeNumbers.
	index := 1.
	html
		tableBody: [ 
			1 to: 6 do: [ :i | 
				html
					tableRow: [ 
						1 to: 7 do: [ :j | 
							(numbers at: index) = 0
								ifTrue: [ html tableData: [  ] ]
								ifFalse: [ 
									html
										tableData: [ 
											html mdlButton rippleEffect icon
												class: 'number';
												style: 'font-size: 14px';
												with: (numbers at: index) asString ] ].
							index := index + 1 ] ] ] ]