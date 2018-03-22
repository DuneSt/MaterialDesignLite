rendering
renderContentOn: html
	html aside
		class: 'mdl-components__nav';
		shadow: 4;
		with: [ html render: self defaultList ].
	(html tag: 'main')
		class: 'mdl-components__pages';
		with: [ html render: self selectedScreen ]