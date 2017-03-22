rendering
renderAnchor: aNode index: anIndex inDiv: div indentedBy: anInteger on: html
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
				ifFalse: [ anchor callback: [ self actionBlock value: aNode element ] ] ].
	anchor
		with: [ 
			html span
				class: #item;
				id: html nextId;
				with: ((self format value: aNode element) ifEmpty: [ $  ]).
			self renderHelpOf: aNode element at: html lastId on: html ].
	aNode children
		ifNotEmpty: [ 
			html div
				onClick: 'expandCollapse(this)';
				class: #icon ]