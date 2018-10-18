Class {
	#name : #MDLMenuItemTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Nav'
}

{ #category : #tests }
MDLMenuItemTest >> testBareBrush [
	self assert: [ :html | html mdlMenuItem ] generates: '<li class="mdl-menu__item"></li>'
]

{ #category : #tests }
MDLMenuItemTest >> testDisabled [
	self assert: [ :html | html mdlMenuItem disabled ] generates: '<li class="mdl-menu__item" disabled="true"></li>'
]

{ #category : #tests }
MDLMenuItemTest >> testFullBleedDivider [
	self assert: [ :html | html mdlMenuItem fullBleedDivider ] generates: '<li class="mdl-menu__item mdl-menu__item--full-bleed-divider"></li>'
]

{ #category : #tests }
MDLMenuItemTest >> testWithContent [
	self assert: [ :html | html mdlMenuItem: 'test' ] generates: '<li class="mdl-menu__item">test</li>'
]
