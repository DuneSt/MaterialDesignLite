tests
testNextPosition
	"We first check the value of the first cell of the table"
	self assert: self contentOfFirstCell equals: 1 asString.

	"Then we change of page and check the new value of the cell."
	(driver findElementByClassName: 'nextPosition') click.
	
	self assert: self contentOfFirstCell equals: (1 + self componentUnderTest elementsToShow) asString