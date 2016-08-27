rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ 
			html heading level5 class: 'section-title';with: 'Layout'.
			html paragraph: 'Building blocks for constructing a page layout.'.
			html unorderedList class: 'navigation'; with: [ 
				html listItem: [ html anchor url: '#navigation-layout'; with: 'Navigation layouts' ].
				html listItem: [ html anchor url: '#grid-layout'; with: 'Grid' ].
				html listItem: [ html anchor url: '#tabs-layout'; with: 'Tabs' ].
				html listItem: [ html anchor url: '#footer-layout'; with: 'Footer' ] ].
			html anchor id: 'navigation-layout'.
			self renderNavigationLayoutsOn: html.
			html anchor id: 'grid-layout'.
			self renderGridLayoutOn: html.
			html anchor id: 'tabs-layout'.
			self renderTabsLayoutOn: html.
			html anchor id: 'footer-layout'.
			self renderFooterLayoutsOn: html.
			]