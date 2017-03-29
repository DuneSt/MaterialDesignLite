tests
testSortColumn
	"We first check the value of the first cell of the table that should not be sorted"

	self assert: self contentOfFirstCell equals: 'Guillaume'.

	"Then we sort the first collumn and check that it is sorted."
	(driver findElementByTagName: 'th') click.
	self assert: self contentOfFirstCell equals: 'Cyril'.

	"Then we check that the next click sort in revers order"
	(driver findElementByTagName: 'th') click.
	self assert: self contentOfFirstCell equals: 'Thomas'.

	"The last click should unsort the content again"
	(driver findElementByTagName: 'th') click.
	self assert: self contentOfFirstCell equals: 'Guillaume'