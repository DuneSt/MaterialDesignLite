private-rendering
renderButtonWithIcon: anIcon action: aSymbol on: html
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick:
					(html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete: (self onCompleteScriptOn: html));
				icon;
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				with: [ html mdlIcon: anIcon ] ]