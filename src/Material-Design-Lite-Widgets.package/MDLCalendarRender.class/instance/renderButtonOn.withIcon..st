as yet unclassified
renderButtonOn: html withIcon: anIconBlock
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ 
			html mdlButton
				icon;
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				with: [ anIconBlock value ] ]