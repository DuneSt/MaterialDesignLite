rendering
renderContentOn: html
	html leftPanel
		class: 'mdl-components__nav';
		shadow: 4;
		with: [ html
				render: self defaultList;
				leftPanelResizer ].
	(html tag: 'main')
		class: 'mdl-components__pages';
		with: [ html render: self selectedScreen ]