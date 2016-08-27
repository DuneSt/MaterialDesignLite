subElements
renderDialogPanelOn: html
	html mdlTabsPanel
		id: 'dialog';
		with: [ 
					html mdlButton
						class: 'mdl-demo-dialog-open';
						raised;
						rippleEffect;
						with: 'Show dialog'.
					html mdlDialog
						openButtonClass: 'mdl-demo-dialog-open';
						closeButtonClass: 'mdl-demo-dialog-close';
						with: [ 
									html mdlDialogTitle with: 'Good job !'.
									html mdlDialogContent with: [ html paragraph with: 'You managed to click the button' ].
									html mdlDialogActions
										with: [ 
											html mdlButton: 'Agree'.
											html mdlButton class: 'mdl-demo-dialog-close'; with: 'Disagree' ] ] ]