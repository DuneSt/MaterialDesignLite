as yet unclassified
renderButtonOn: html withIcon: anIconBlock
	html
		mdlCellDesktop: 3
		tablet: 2
		phone: 1
		with: [ 
			html mdlButton
				rippleEffect;
				icon;
				with: [ anIconBlock value ] ]