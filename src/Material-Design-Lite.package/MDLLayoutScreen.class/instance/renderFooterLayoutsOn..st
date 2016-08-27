as yet unclassified
renderFooterLayoutsOn: html
	html heading level5 class: 'section-title';with: 'FOOTER'.
	html paragraph: 'It is highly recommended to use widgets instead. This code is an example to help you to create your own Footer widget.'.
	self renderMegaFooterOn: html.
	self renderMiniFooterOn: html.