private-rendering
renderYearsOn: html
	html mdlGrid
		style: 'text-align: center';
		with: [ self renderYearsHeaderOn: html.
			calendar yearsInterval
				do: [ :aYear | 
					html mdlCell
						class: 'year-cell';
						class: 'active' if: aYear = calendar currentDate year;
						onClick:
							(html jQuery ajax
								callback: [ calendar goToYear: aYear ];
								onComplete: (self jsOnCompleteScriptOn: html));
						desktopSize: 4;
						with: aYear greaseString ] ]