public api
atMiddleAddLinks: links
	"Links must be formatted as following : (header -> #( (label1->url1) . (label2 -> url2)))"

	middleSection isNilSection
		ifTrue: [ middleSection := MDLFooterDropdownSection new ].
	middleSection addLinks: links