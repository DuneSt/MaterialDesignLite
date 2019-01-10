Class {
	#name : #MDLTabsTabTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Nav'
}

{ #category : #tests }
MDLTabsTabTest >> testBareBrush [
	self assert: [ :html | html mdlTab ] generates: '<a class="mdl-tabs__tab"></a>'
]

{ #category : #tests }
MDLTabsTabTest >> testIsActive [
	self assert: [ :html | html mdlTab isActive ] generates: '<a class="mdl-tabs__tab is-active"></a>'
]

{ #category : #tests }
MDLTabsTabTest >> testIsActiveIf [
	self assert: [ :html | html mdlTab isActiveIf: true ] generates: '<a class="mdl-tabs__tab is-active"></a>'.
	self assert: [ :html | html mdlTab isActiveIf: false ] generates: '<a class="mdl-tabs__tab"></a>'.
]

{ #category : #tests }
MDLTabsTabTest >> testWithContent [
	self assert: [ :html | html mdlTab: 'test' ] generates: '<a class="mdl-tabs__tab">test</a>'
]
