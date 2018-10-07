tests
testFullBleedDivider
	self assert: [ :html | html mdlMenuItem fullBleedDivider ] generates: '<li class="mdl-menu__item mdl-menu__item--full-bleed-divider"></li>'