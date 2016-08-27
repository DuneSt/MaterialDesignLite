rendering
renderButtonWithIcon: aString callbackMethod: aSymbol disabled: aBoolean on: html
	html mdlButton
		icon;
		rippleEffect;
		class:
			(aBoolean
				ifTrue: [ 'disable' ]);
		onClick:
			(aBoolean
				ifFalse: [ html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete:
							(html jQuery
								script: [ :s | 
									s
										<<
											((html jQuery id: tableBodyId) load
												html: [ :ajaxHtml | self renderTableBodyOn: ajaxHtml ]);
										<<
											((html jQuery id: arrowsId) load html: [ :ajaxHtml | self renderTableArrowsOn: ajaxHtml ]) ]) ]);
		with: [ html mdlIcon: aString ]