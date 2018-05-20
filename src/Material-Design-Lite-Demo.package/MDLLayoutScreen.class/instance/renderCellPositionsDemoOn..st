demos
renderCellPositionsDemoOn: html
	html mdlGrid
		shadow: 2;
		style: 'height: 500px;';
		with: [ html mdlCell
				class: 'grid-cell-demo';
				top;
				size: 3;
				with: 'Top'.
			html mdlCell
				class: 'grid-cell-demo';
				middle;
				size: 3;
				with: 'Middle'.
			html mdlCell
				class: 'grid-cell-demo';
				bottom;
				size: 3;
				with: 'Bottom'.
			html mdlCell
				class: 'grid-cell-demo';
				stretch;
				size: 3;
				with: 'Stretch' ]