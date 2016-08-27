as yet unclassified
beCollapsible
	^ (self rules includes: #collapsible)
		ifTrue: [ self ]
		ifFalse: [ 
			MDLCollapsibleHeader newWith: self ]