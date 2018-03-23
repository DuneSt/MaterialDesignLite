rendering
renderFooterLayoutsOn: html
	html heading level5
		class: 'section-title';
		id: 'footer-layout';
		with: 'FOOTER'.
	self
		render: self megaFooter fullWidth: true on: html;
		render: self miniFooter fullWidth: true on: html