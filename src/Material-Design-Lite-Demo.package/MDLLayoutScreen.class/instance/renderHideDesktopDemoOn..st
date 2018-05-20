demos
renderHideDesktopDemoOn: html
	html
		mdlGrid: [ html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				hideDesktop;
				with: 'Hide on desktop size'.
			html mdlCell
				class: 'grid-cell-demo';
				size: 6;
				with: 'Always show' ]