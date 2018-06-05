private-rendering
renderMonthesOn: html
	html mdlGrid
		style: 'text-align: center';
		with: [ Date monthNames
				do: [ :aString | 
					html mdlCell
						class: 'month-cell';
						class: 'active' if: aString = self currentDate monthName;
						onClick: (self jsGoToMonth: (Month indexOfMonth: aString) on: html);
						desktopSize: 4;
						with: aString ] ]