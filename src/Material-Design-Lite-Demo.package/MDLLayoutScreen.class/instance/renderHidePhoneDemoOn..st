demos
renderHidePhoneDemoOn: html
	html
		mdlGrid: [ html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				hidePhone;
				with: 'Hide on phone size'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				with: 'Always show' ]