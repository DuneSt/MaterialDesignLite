tests
testBareBrush
	self assert: [ :html | html mdlList ] generates: '<ul class="mdl-list"></ul>'