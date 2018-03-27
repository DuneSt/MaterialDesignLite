rendering
renderRightPanelOn: html
	html render: self toolbar.
	html div
		id: self rightPanelId;
		class: #'right-panel';
		class: #toFold;
		shadow: 2;
		with: [ html render: MDLRightPanelResizer new.
			html render: self rightPanel ]