Class {
	#name : #MDLTooltipTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Tooltips'
}

{ #category : #tests }
MDLTooltipTest >> testBareBrush [
	self assert: [ :html | html mdlTooltip ] generates: '<span class="mdl-tooltip"></span>'
]

{ #category : #tests }
MDLTooltipTest >> testBottom [
	self assert: [ :html | html mdlTooltip bottom ] generates: '<span class="mdl-tooltip mdl-tooltip--bottom"></span>'
]

{ #category : #tests }
MDLTooltipTest >> testFor [
	self
		assert: [ :html | 
			html mdlTooltip
				for: html nextId;
				with: 'test' ]
		generates: '<span class="mdl-tooltip" for="id1">test</span>'
]

{ #category : #tests }
MDLTooltipTest >> testLarge [
	self assert: [ :html | html mdlTooltip large ] generates: '<span class="mdl-tooltip mdl-tooltip--large"></span>'
]

{ #category : #tests }
MDLTooltipTest >> testLeft [
	self assert: [ :html | html mdlTooltip left ] generates: '<span class="mdl-tooltip mdl-tooltip--left"></span>'
]

{ #category : #tests }
MDLTooltipTest >> testRight [
	self assert: [ :html | html mdlTooltip right ] generates: '<span class="mdl-tooltip mdl-tooltip--right"></span>'
]

{ #category : #tests }
MDLTooltipTest >> testTop [
	self assert: [ :html | html mdlTooltip top ] generates: '<span class="mdl-tooltip mdl-tooltip--top"></span>'
]

{ #category : #tests }
MDLTooltipTest >> testWithContent [
	self assert: [ :html | html mdlTooltip with: 'test' ] generates: '<span class="mdl-tooltip">test</span>'
]
