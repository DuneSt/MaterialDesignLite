tests
testRendering
	self assert: [ :html | html render: MDLRightPanelResizer new ] generatedIncludes: 'class="resizer-right resizer"'