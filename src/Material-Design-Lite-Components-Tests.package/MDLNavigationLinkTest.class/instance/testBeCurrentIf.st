tests
testBeCurrentIf
	self assert: [ :html | html mdlNavigationLink beCurrentIf: true ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'.
	self assert: [ :html | html mdlNavigationLink beCurrentIf: false ] generates: '<a class="mdl-navigation__link"></a>'.
	self assert: [ :html | html mdlNavigationLink beCurrentIf: [ true ] ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'.
	self assert: [ :html | html mdlNavigationLink beCurrentIf: [ false ] ] generates: '<a class="mdl-navigation__link"></a>'.