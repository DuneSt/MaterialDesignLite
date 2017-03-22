rendering
printResultOf: aBlock context: aContext on: stream
	| document |
	document := (WAHtmlDocument on: stream codec: GRNullCodec new)
		scriptGenerator: WADefaultScriptGenerator new;
		yourself.
	aContext document: document.
	(WAHtmlCanvas context: aContext)
		render: aBlock;
		flush.
	document scriptGenerator closeOn: document