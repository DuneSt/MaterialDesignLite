Class {
	#name : #MDLDialogTitleTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Dialog'
}

{ #category : #tests }
MDLDialogTitleTest >> testBareBrush [
	self assert: [ :html | html mdlDialogTitle ] generates: '<h4 class="mdl-dialog__title"></h4>'
]

{ #category : #tests }
MDLDialogTitleTest >> testLevel1 [
	self
		assert: [ :html | 
			html mdlDialogTitle
				level1;
				with: 'title' ]
		generates: '<h1 class="mdl-dialog__title">title</h1>'
]

{ #category : #tests }
MDLDialogTitleTest >> testLevel2 [
	self
		assert: [ :html | 
			html mdlDialogTitle
				level2;
				with: 'title' ]
		generates: '<h2 class="mdl-dialog__title">title</h2>'
]

{ #category : #tests }
MDLDialogTitleTest >> testLevel3 [
	self
		assert: [ :html | 
			html mdlDialogTitle
				level3;
				with: 'title' ]
		generates: '<h3 class="mdl-dialog__title">title</h3>'
]

{ #category : #tests }
MDLDialogTitleTest >> testLevel4 [
	self
		assert: [ :html | 
			html mdlDialogTitle
				level4;
				with: 'title' ]
		generates: '<h4 class="mdl-dialog__title">title</h4>'
]

{ #category : #tests }
MDLDialogTitleTest >> testLevel5 [
	self
		assert: [ :html | 
			html mdlDialogTitle
				level5;
				with: 'title' ]
		generates: '<h5 class="mdl-dialog__title">title</h5>'
]

{ #category : #tests }
MDLDialogTitleTest >> testLevel6 [
	self
		assert: [ :html | 
			html mdlDialogTitle
				level6;
				with: 'title' ]
		generates: '<h6 class="mdl-dialog__title">title</h6>'
]

{ #category : #tests }
MDLDialogTitleTest >> testWithContent [
	self assert: [ :html | html mdlDialogTitle: 'title' ] generates: '<h4 class="mdl-dialog__title">title</h4>'
]
