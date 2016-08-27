as yet unclassified
renderNumbersOn: html
	html
		tableBody: [ 
			html tableRow: [ 1 to: 7 do: [ :aNumber | html tableData: [ html mdlButton rippleEffect icon class: 'number'; with: aNumber asString ] ] ].
			html
				tableRow: [ 8 to: 14 do: [ :aNumber | html tableData: [ html mdlButton rippleEffect icon class: 'number'; with: aNumber asString ] ] ].
			html
				tableRow: [ 15 to: 21 do: [ :aNumber | html tableData: [ html mdlButton rippleEffect icon class: 'number'; with: aNumber asString ] ] ].
			html
				tableRow: [ 22 to: 28 do: [ :aNumber | html tableData: [ html mdlButton rippleEffect icon class: 'number'; with: aNumber asString ] ] ].
			html
				tableRow: [ 29 to: 29 do: [ :aNumber | html tableData: [ html mdlButton rippleEffect icon class: 'number'; with: aNumber asString ] ].
					1 to: 6 do: [ :aNumber | html tableData: [ html mdlButton icon disabled class: 'number'; with: aNumber asString ] ] ] ]