adding
addLinksToLeftSection: someLinks
	someLinks keysAndValuesDo: [ :header :links | leftSection at: header put: links ]