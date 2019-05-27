Class {
	#name : #MDLPanelSwitcherButtonTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Design-Lite-Extensions-Tests-Panels'
}

{ #category : #tests }
MDLPanelSwitcherButtonTest >> testId [
	self assert: [ :html | MDLPanelSwitcherButton new id: 'testId'; renderContentOn: html ] generatedIncludes: 'id="testId"'.
]

{ #category : #tests }
MDLPanelSwitcherButtonTest >> testJsOnComplete [
	self
		assert: [ :html | 
			MDLPanelSwitcherButton new
				onCompleteJs: 'console.log(''test'')';
				renderContentOn: html ]
		generatedIncludes: 'function(){console.log(''test'')}'.
	self
		assert: [ :html | 
			MDLPanelSwitcherButton new
				onCompleteJs: 'console.log(''test'')' js;
				renderContentOn: html ]
		generatedIncludes: 'function(){console.log(''test'')}'.
	self
		assert:
			((MDLPanelSwitcherButton new
				onCompleteJs: 'console.log(''test'')';
				jsOnComplete) isKindOf: JSStream).
	self
		assert:
			((MDLPanelSwitcherButton new
				onCompleteJs: 'console.log(''test'')' js;
				jsOnComplete) isKindOf: JSStream)
]

{ #category : #tests }
MDLPanelSwitcherButtonTest >> testSelect [
	self deny: [ :html | MDLPanelSwitcherButton new renderContentOn: html ] generatedIncludes: 'class="panel-switcher-button__content panel-switcher-selected"'.
	self assert: [ :html | MDLPanelSwitcherButton new select; renderContentOn: html ] generatedIncludes: 'class="panel-switcher-button__content panel-switcher-selected"'
]

{ #category : #tests }
MDLPanelSwitcherButtonTest >> testTextIsGenerated [
	self assert: [ :html | MDLPanelSwitcherButton new text: 'Option'; renderContentOn: html ] generatedIncludes: '>Option</div>'.
]

{ #category : #tests }
MDLPanelSwitcherButtonTest >> testTooltipNotRenderedIfNil [
	self deny: [ :html | MDLPanelSwitcherButton new renderContentOn: html ] generatedIncludes: 'mdl-tooltip'
]

{ #category : #tests }
MDLPanelSwitcherButtonTest >> testTooltipRendering [
	self
		assert: [ :html | 
			MDLPanelSwitcherButton new
				tooltip: 'test';
				renderTooltipFor: html nextId on: html ]
		generates: '<span class="mdl-tooltip mdl-tooltip--large" for="id1">test</span>'
]
