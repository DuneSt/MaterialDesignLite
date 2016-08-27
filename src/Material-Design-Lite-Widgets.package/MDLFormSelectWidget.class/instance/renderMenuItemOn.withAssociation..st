rendering
renderMenuItemOn: html withAssociation: anAssociation
	html
		mdlMenuItem: [ 
			html anchor
				style: 'display: block; text-decoration: none; color: inherit;';
				with: [ html text: anAssociation key ] ]