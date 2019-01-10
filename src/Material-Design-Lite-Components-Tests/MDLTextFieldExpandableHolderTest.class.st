Class {
	#name : #MDLTextFieldExpandableHolderTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLTextFieldExpandableHolderTest >> testBareBrush [
	self assert: [ :html | html mdlTextFieldExpandableHolder ] generates: '<div class="mdl-textfield__expandable-holder"></div>'
]

{ #category : #tests }
MDLTextFieldExpandableHolderTest >> testWithContent [
	self assert: [ :html | html mdlTextFieldExpandableHolder: 'test' ] generates: '<div class="mdl-textfield__expandable-holder">test</div>'
]
