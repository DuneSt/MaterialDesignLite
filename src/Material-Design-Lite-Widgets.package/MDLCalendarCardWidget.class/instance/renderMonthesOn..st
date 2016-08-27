private-rendering
renderMonthesOn: html
	html mdlGrid
		style: 'text-align: center';
		with: [ self monthesNames
				do: [ :aString | 
					html mdlCell
						class: 'month-cell';
						class:
							(aString = calendar currentDate monthName
								ifTrue: [ 'active' ]);
						onClick: (self scriptGoToMonth: (Month indexOfMonth: aString) on: html);
						desktopSize: 4;
						with: aString ] ]