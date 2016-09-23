researchField
obtainHtmlForList
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll:
					(WAHtmlCanvas builder
						documentClass: WAHtmlDocument;
						rootClass: WAHtmlRoot;
						fullDocument: false;
						render: [ :html | self renderListOn: html ]) ]