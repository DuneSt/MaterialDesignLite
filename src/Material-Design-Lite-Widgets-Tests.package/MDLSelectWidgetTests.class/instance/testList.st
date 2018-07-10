tests
testList
	select list: self defaultPossibilities.
	self
		assert: [ :html | html render: select ]
		generatedIncludes:
			'<li class="mdl-menu__item" id="id2entry1">1</li><li class="mdl-menu__item" id="id2entry2">2</li><li class="mdl-menu__item" id="id2entry3">3</li><li class="mdl-menu__item" id="id2entry4">4</li><li class="mdl-menu__item" id="id2entry5">5</li><li class="mdl-menu__item" id="id2entry5 (1)">5 (1)</li>'