tests
testNoBackground
	self assert: [ :html | html mdlBadge noBackground ] generates: '<span class="mdl-badge mdl-badge--no-background"></span>'