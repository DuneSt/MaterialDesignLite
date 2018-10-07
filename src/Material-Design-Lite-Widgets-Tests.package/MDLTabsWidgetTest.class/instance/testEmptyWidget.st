tests
testEmptyWidget
	self assert: [ :html | html render: MDLTabWidget new ] generates: '<div class="mdl-tabs mdl-js-tabs" id="id1"><div class="mdl-tabs__tab-bar"></div></div>'