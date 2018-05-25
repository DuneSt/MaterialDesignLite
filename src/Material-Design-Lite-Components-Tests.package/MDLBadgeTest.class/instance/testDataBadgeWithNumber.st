tests
testDataBadgeWithNumber
	self assert: [ :html | html mdlBadge dataBadge: 1 ] generates: '<span class="mdl-badge" data-badge="1"></span>'