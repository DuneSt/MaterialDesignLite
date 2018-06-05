private-rendering
renderYearsOn: html
	html mdlGrid
		style: 'text-align: center';
		with: [ self renderYearsHeaderOn: html.
			self calendar yearsInterval
				do: [ :aYear | 
					html mdlCell
						class: 'year-cell';
						class: 'active' if: aYear = self currentDate year;
						onClick:
							(html jQuery ajax
								callback: [ self calendar goToYear: aYear ];
								onComplete: (self jsOnCompleteScriptOn: html));
						desktopSize: 4;
						with: aYear greaseString ] ]