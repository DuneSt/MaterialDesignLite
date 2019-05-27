Class {
	#name : #MDLFoldButtonTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Design-Lite-Extensions-Tests-Panels'
}

{ #category : #tests }
MDLFoldButtonTest >> testFold [
	self
		assert: [ :html | 
			html
				render:
					(MDLFoldButton new
						divId: '#test';
						fold;
						yourself) ]
		generatedIncludes: 'document.getElementById(''test'').style.width=''0'';'
]

{ #category : #tests }
MDLFoldButtonTest >> testOnCompleteScript [
	self
		assert: [ :html | 
			html
				render:
					(MDLFoldButton new
						divId: '#test';
						onCompleteScript: 'console.log(''test'')';
						yourself) ]
		generatedIncludes: 'console.log(''test'')'.
	self
		assert:
			((MDLFoldButton new
				divId: '#test';
				onCompleteScript: 'console.log(''test'')';
				yourself) showAndHide contents includesSubstring: 'console.log(''test'')')
]

{ #category : #tests }
MDLFoldButtonTest >> testUnfold [
	self
		deny: [ :html | 
			html
				render:
					(MDLFoldButton new
						divId: '#test';
						unfold;
						yourself) ]
		generatedIncludes: 'document.getElementById(''test'').style.width=''0'';'
]
