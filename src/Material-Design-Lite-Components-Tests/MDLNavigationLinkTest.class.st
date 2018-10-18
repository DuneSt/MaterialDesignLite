Class {
	#name : #MDLNavigationLinkTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Nav'
}

{ #category : #tests }
MDLNavigationLinkTest >> testBareBrush [
	self assert: [ :html | html mdlNavigationLink ] generates: '<a class="mdl-navigation__link"></a>'
]

{ #category : #tests }
MDLNavigationLinkTest >> testBeCurrent [
	self assert: [ :html | html mdlNavigationLink beCurrent ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'
]

{ #category : #tests }
MDLNavigationLinkTest >> testBeCurrentIf [
	self assert: [ :html | html mdlNavigationLink beCurrentIf: true ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'.
	self assert: [ :html | html mdlNavigationLink beCurrentIf: false ] generates: '<a class="mdl-navigation__link"></a>'.
	self assert: [ :html | html mdlNavigationLink beCurrentIf: [ true ] ] generates: '<a class="mdl-navigation__link mdl-navigation__link--current"></a>'.
	self assert: [ :html | html mdlNavigationLink beCurrentIf: [ false ] ] generates: '<a class="mdl-navigation__link"></a>'.
]

{ #category : #tests }
MDLNavigationLinkTest >> testWithContent [
	self assert: [ :html | html mdlNavigationLink: 'test' ] generates: '<a class="mdl-navigation__link">test</a>'
]
