rendering
renderMenuItemOn: html withAssociation: anAssociation
	html
		mdlMenuItem: [ 
			html anchor
				callback: [ self actionWith: anAssociation value ];
				with: [ html text: anAssociation key ] ]