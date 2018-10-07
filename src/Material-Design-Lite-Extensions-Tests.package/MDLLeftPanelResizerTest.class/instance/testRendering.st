tests
testRendering
	self assert: [ :html | html render: MDLLeftPanelResizer new ] generatedIncludes: 'class="resizer-left resizer"'