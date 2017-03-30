tests
testPreviousPosition
	(driver findElementByClassName: 'nextPosition') click.

	"We first check the value of the first cell of the table"
	self assert: self contentOfFirstCell equals: (1 + self componentUnderTest elementsToShow) asString.
	
	(driver findElementByClassName: 'previousPosition') click.
	self assert: self contentOfFirstCell equals: 1 asString