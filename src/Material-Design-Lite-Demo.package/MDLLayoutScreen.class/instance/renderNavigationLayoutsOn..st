rendering
renderNavigationLayoutsOn: html
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
		render: self fixedTabs fullWidth: true on: html