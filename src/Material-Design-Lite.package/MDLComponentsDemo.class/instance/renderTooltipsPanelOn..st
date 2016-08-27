rendering
renderTooltipsPanelOn: html
	html mdlTabsPanel
		id: 'tooltips';
		with: [ 
			html mdlButton raised ; id: 'hello'; with: 'Hello'.
			html mdlTooltip for: 'hello'; with: [ html text: 'I''m a small tooltip' ].
			html break.
			html mdlButton raised ; id: 'hello1'; with: 'Hello'.
			html mdlTooltip for: 'hello1'; large; with: [ html text: 'I''m a large tooltip' ].
		]