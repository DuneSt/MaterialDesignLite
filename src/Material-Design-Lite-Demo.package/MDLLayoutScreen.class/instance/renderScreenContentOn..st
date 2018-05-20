rendering
renderScreenContentOn: html
	self renderTocOn: html.
	html heading level5
		class: 'section-title';
		id: 'navigation-layout';
		with: 'Navigation layouts'.
	self
		render: self transparentHeader fullWidth: true on: html;
		render: self fixedDrawerNoHeader fullWidth: true on: html;
		render: self fixedHeader fullWidth: true on: html;
		render: self fixedHeaderAndDrawer fullWidth: true on: html;
		render: self scrollingHeader fullWidth: true on: html;
		render: self waterfallHeader fullWidth: true on: html;
		render: self scrollableTabs fullWidth: true on: html;
		render: self fixedTabs fullWidth: true on: html.
	html heading level5
		class: 'section-title';
		id: 'grid-layout';
		with: 'GRID'.
	self
		render: self gridLayout fullWidth: true on: html;
		render: self cellPositions fullWidth: true on: html;
		render: self hideDesktopCells fullWidth: true on: html;
		render: self hideTabletCells fullWidth: true on: html;
		render: self hidePhoneCells fullWidth: true on: html.
	html heading level5
		class: 'section-title';
		id: 'tabs-layout';
		with: 'TABS'.
	self render: self tabs on: html.
	html heading level5
		class: 'section-title';
		id: 'footer-layout';
		with: 'FOOTER'.
	self
		render: self megaFooter fullWidth: true on: html;
		render: self miniFooter fullWidth: true on: html