rendering
renderAnchor: aNode withId: anId index: anIndex inDiv: div indentedBy: anInteger on: html
	| anchor |
	anchor := html anchor.
	self actionBlock
		ifNotNil: [ 
			self isJsAction
				ifTrue: [ 
					anchor
						onClick:
							((self actionBlock value: aNode element)
								onComplete:
									((html jQuery id: div) load
										html: [ :ajaxHtml | 
											self
												renderItemContentOf: aNode
												index: anIndex
												indentedBy: anInteger
												on: ajaxHtml ])) ]
				ifFalse: [ anchor onClick: 'goTo(event)' ] ].
	anchor
		with: [ 
			html span
				class: #item;
				id: anId;
				with: [ html text: ((self format value: aNode element) ifEmpty: [ $  ]) ].
			self renderHelpOf: aNode element at: anId on: html ].
	aNode children
		ifNotEmpty: [ 
			html div
				onClick: 'expandCollapse(this)';
				class: #icon ]