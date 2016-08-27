as yet unclassified
beCollapsible
	^ (self rules includes: #collapsible)
		ifTrue: [ self ]
		ifFalse: [ 
			MDLCollapsibleHeader new
				header: self;
				links: self links;
				yourself ]