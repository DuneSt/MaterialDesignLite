tests
contentOfFirstCell
	^ (((driver findElementByTagName: 'tbody') findElementByTagName: 'tr') findElementByTagName: 'td') getText