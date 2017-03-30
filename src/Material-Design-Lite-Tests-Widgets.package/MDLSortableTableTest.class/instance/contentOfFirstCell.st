helper - selenium
contentOfFirstCell
	^ (((driver findElementByTagName: 'tbody') findElementByTagName: 'tr') findElementByTagName: 'td') getText