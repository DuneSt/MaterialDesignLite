public api
atBottomAddLinks: links
	"Links must be formatted as following : (header -> #((label1->url1) . (label2 -> url2)))"

	bottomSection isNilSection
		ifTrue: [ bottomSection := MDLFooterLinksSection new ].
	bottomSection := bottomSection
		addLinksList:
			(MDLMegaFooterLinksList new
				addLinks: links;
				yourself)