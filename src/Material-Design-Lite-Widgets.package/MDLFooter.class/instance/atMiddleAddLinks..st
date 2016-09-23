public api
atMiddleAddLinks: links
	"Links must be formatted as following : #(header -> #( (label1->url1) . (label2 -> url2)))"

	| list |
	middleSection isNilSection
		ifTrue: [ middleSection := MDLFooterDropdownSection new ].
	list := links collect: [ :anAssociation | MDLMegaFooterLinksList new addLinks: anAssociation ].
	middleSection addLinksLists: list