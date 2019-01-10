Class {
	#name : #MDLTextFieldContainerTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLTextFieldContainerTest >> testBareBrush [
	self assert: [ :html | html mdlTextFieldContainer ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'
]

{ #category : #tests }
MDLTextFieldContainerTest >> testBeExpandableIf [
	self assert: [ :html | html mdlTextFieldContainer beExpandableIf: true ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable"></div>'.
	self assert: [ :html | html mdlTextFieldContainer beExpandableIf: false ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'
]

{ #category : #tests }
MDLTextFieldContainerTest >> testBeFloatingLabelIf [
	self assert: [ :html | html mdlTextFieldContainer beFloatingLabelIf: true ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"></div>'.
	self assert: [ :html | html mdlTextFieldContainer beFloatingLabelIf: false ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'
]

{ #category : #tests }
MDLTextFieldContainerTest >> testExpandable [
	self assert: [ :html | html mdlTextFieldContainer expandable ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable"></div>'
]

{ #category : #tests }
MDLTextFieldContainerTest >> testFloatingLabel [
	self assert: [ :html | html mdlTextFieldContainer floatingLabel ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"></div>'
]

{ #category : #tests }
MDLTextFieldContainerTest >> testWithContent [
	self assert: [ :html | html mdlTextFieldContainer: 'test' ] generates: '<div class="mdl-textfield mdl-js-textfield">test</div>'
]
