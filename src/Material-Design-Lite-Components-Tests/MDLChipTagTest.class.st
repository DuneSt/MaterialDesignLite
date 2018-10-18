"
A MDLChipTagTest is a test class for testing the behavior of MDLChipTag
"
Class {
	#name : #MDLChipTagTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Chips'
}

{ #category : #tests }
MDLChipTagTest >> testAjaxDeleteCallback [
	self
		assert: [ :html | html mdlChip ajaxDeleteCallback: [ 'test' crLog ] ]
		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<span onclick=\"$.ajax({' '.remove();' '<i class=\"material-icons\">cancel</i></span>')
]

{ #category : #tests }
MDLChipTagTest >> testAjaxDeleteCallbackSuccessHook [
	self
		assert: [ :html | html mdlChip ajaxDeleteCallback: [ 'test' crLog ] successHook: 'console.log(this)' ]
		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<span onclick=\"$.ajax({' '.remove();' '<i class=\"material-icons\">cancel</i></span>' 'console.log(this)')
]

{ #category : #tests }
MDLChipTagTest >> testBareBrush [
	self assert: [ :html | html mdlChip ] generates: '<span class="mdl-chip"></span>'
]

{ #category : #tests }
MDLChipTagTest >> testDeleteCallback [
	self
		assert: [ :html | html mdlChip deleteCallback: [ 'test' crLog ] ]
		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<a class=\"mdl-chip__action\"' '"><i class=\"material-icons\">cancel</i></a>')
]

{ #category : #tests }
MDLChipTagTest >> testWithContact [
	self
		assert: [ :html | 
			html
				mdlChip: [ html mdlIcon
						chipIcon;
						with: #accessibility ] ]
		generates:
			'<span class="mdl-chip"><i class="material-icons mdl-chip__contact" id="id1">accessibility</i></span><script type="text/javascript">$("#id1").parent(".mdl-chip").addClass("mdl-chip--contact");</script>'
]

{ #category : #tests }
MDLChipTagTest >> testWithContent [
	self assert: [ :html | html mdlChip: [ html mdlChipText: 'test' ] ] generates: '<span class="mdl-chip"><span class="mdl-chip__text">test</span></span>'
]
