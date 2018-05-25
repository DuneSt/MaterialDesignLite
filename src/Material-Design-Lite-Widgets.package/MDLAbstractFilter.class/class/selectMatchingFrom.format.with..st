accessing
selectMatchingFrom: aCollection format: aFormatBlock with: aPattern
	"I take as parameter a collection of elements to match, a block to get the readable format of the element and a pattern and I should return a collection of elements matching the pattern in their readable format."

	^ aCollection select: [ :each | self formatedElement: (aFormatBlock value: each) matches: aPattern ]