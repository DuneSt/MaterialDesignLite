tests
testElementsToShow
	self assert: ((driver findElementByTagName: 'tbody') findElementsByTagName: 'tr') size equals: 10.

	"We click on the second item of the menu allowing to select the number of elements to show."
	self clickOnElementToShowAt: 2.
	self assert: ((driver findElementByTagName: 'tbody') findElementsByTagName: 'tr') size equals: 50.
	
	self clickOnElementToShowAt: 4.
	self assert: ((driver findElementByTagName: 'tbody') findElementsByTagName: 'tr') size equals: 200.
	
	self clickOnElementToShowAt: 1.
	self assert: ((driver findElementByTagName: 'tbody') findElementsByTagName: 'tr') size equals: 10