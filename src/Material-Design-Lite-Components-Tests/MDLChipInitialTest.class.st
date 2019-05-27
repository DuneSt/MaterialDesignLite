Class {
	#name : #MDLChipInitialTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Chips'
}

{ #category : #tests }
MDLChipInitialTest >> testBareBrush [
	self assert: [ :html | html mdlChipContact ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" id="id1"></span>'
]

{ #category : #tests }
MDLChipInitialTest >> testColor [
	"Teal in hex is currently #009587"
	
	self assert: [ :html | html mdlChipContact color: MDLColor teal ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" style="background-color: #009587" id="id1"></span>'
]

{ #category : #tests }
MDLChipInitialTest >> testHexColor [
	self assert: [ :html | html mdlChipContact hexColor: '009587' ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" style="background-color: #009587" id="id1"></span>'
]

{ #category : #tests }
MDLChipInitialTest >> testWithContent [
	self assert: [ :html | html mdlChipContact: 'Test' ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" id="id1">Test</span>'
]
