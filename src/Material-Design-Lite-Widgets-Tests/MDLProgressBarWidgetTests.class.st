Class {
	#name : #MDLProgressBarWidgetTests,
	#superclass : #MDLAbstractSeasideTestCase,
	#category : 'Material-Design-Lite-Widgets-Tests-Loading'
}

{ #category : #tests }
MDLProgressBarWidgetTests >> testHidden [
	| bar |
	bar := MDLProgressBarWidget new.
	bar hide: false.
	self assert: [ :html | html render: bar ] generatedIncludes: 'MaterialProgress.setProgress'.
	bar hidden.
	self deny: [ :html | html render: bar ] generatedIncludes: 'MaterialProgress.setProgress'.
	
]

{ #category : #tests }
MDLProgressBarWidgetTests >> testRefreshTime [
	| bar |
	bar := MDLProgressBarWidget new.
	bar refreshTime: 100 milliSeconds.
	self assert: [ :html | html render: bar ] generatedIncludesAll: #('setInterval' '100').
	self deny: [ :html | html render: bar ] generatedIncludes: '10000'.
	bar refreshTime: 10 seconds.
	self assert: [ :html | html render: bar ] generatedIncludesAll: #('setInterval' '10000')
]
