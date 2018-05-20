demos
renderHideTabletDemoOn: html
	html
		mdlGrid: [ html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				hideTablet;
				with: 'Hide on tablet size'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				with: 'Always show' ]