Class {
	#name : #MDLCardSubtitleTextTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #tests }
MDLCardSubtitleTextTest >> testBareBrush [
	self assert: [ :html | html mdlCardSubtitleText ] generates: '<div class="mdl-card__subtitle-text"></div>'
]

{ #category : #tests }
MDLCardSubtitleTextTest >> testWithContent [
	self assert: [ :html | html mdlCardSubtitleText: 'content' ] generates: '<div class="mdl-card__subtitle-text">content</div>'
]
