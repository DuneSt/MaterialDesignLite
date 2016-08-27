subElements
renderDialogPanelOn: html
	html mdlTabsPanel
		id: 'dialog';
		with: [ 
					html mdlButton id: 'mdl-demo-button'; raised; rippleEffect; with: 'Show dialog'.
					html mdlDialog
						for: 'mdl-demo-button' on: html;
						with: [ html text: 'Je suis un dialogue' ]. ]