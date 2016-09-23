adding
onLeftSideAddLinks: links
	"Links must be formatted as following : (header -> #((label1->url1) . (label2 -> url2)))"
	leftSection isNilSection
		ifTrue: [ leftSection := MDLFooterLinksSection new ].
	leftSection := leftSection addLinksList: (MDLMiniFooterLinksList new addLinks: links; yourself)