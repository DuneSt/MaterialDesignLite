demos
renderCellOrderDemoOn: html
	html mdlGrid
		shadow: 2;
		with: [ html mdlCell
				class: 'grid-cell-demo';
				desktopSize: 3;
				tabletSize: 2;
				phoneSize: 1;
				desktopOrder: 4;
				tabletOrder: 3;
				phoneOrder: 2;
				with: 'A (D: 4|T: 3|P: 2)'.
			html mdlCell
				class: 'grid-cell-demo';
				desktopSize: 3;
				tabletSize: 2;
				phoneSize: 1;
				desktopOrder: 3;
				tabletOrder: 2;
				phoneOrder: 4;
				with: 'B (D: 3|T: 2|P: 4)'.
			html mdlCell
				class: 'grid-cell-demo';
				desktopSize: 3;
				tabletSize: 2;
				phoneSize: 1;
				desktopOrder: 2;
				tabletOrder: 4;
				phoneOrder: 3;
				with: 'C (D: 2|T: 4|P: 3)'.
			html mdlCell
				class: 'grid-cell-demo';
				desktopSize: 3;
				tabletSize: 2;
				phoneSize: 1;
				order: 1;
				with: 'D (D: 1|T: 1|P: 1)' ]