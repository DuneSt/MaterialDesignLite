tests
testCloseButtonId
	self assert: [ :html | html mdlDialog closeButtonId: html nextId ] generates: '<dialog class="mdl-dialog" id="id1-dialog" data-closebtnid="id1"></dialog>'