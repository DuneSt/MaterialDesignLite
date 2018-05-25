tests
testOpenButtonId
	self assert: [ :html | html mdlDialog openButtonId: html nextId ] generates: '<dialog class="mdl-dialog" id="id1-dialog" data-openbtnid="id1"></dialog><script type="text/javascript">newDialog("id1-dialog");</script>'