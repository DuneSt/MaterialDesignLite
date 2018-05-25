tests
testBareBrush
	self assert: [ :html | html mdlMiniFooter ] generates: '<footer class="mdl-mini-footer"></footer>'