tests
testSortBlock
	select
		labelBlock: [ :number | 
			number = 5
				ifTrue: [ '0' ]
				ifFalse: [ (number - 1) greaseString ] ];
		sortBlock: [ :a :b | a <= b ].
	self
		assert: [ :html | html render: select ]
		generatedIncludes:
			'<li class="mdl-menu__item" id="id2entry0">0</li><li class="mdl-menu__item" id="id2entry0 (1)">0 (1)</li><li class="mdl-menu__item" id="id2entry0 (2)">0 (2)</li><li class="mdl-menu__item" id="id2entry1">1</li><li class="mdl-menu__item" id="id2entry2">2</li><li class="mdl-menu__item" id="id2entry3">3</li>'