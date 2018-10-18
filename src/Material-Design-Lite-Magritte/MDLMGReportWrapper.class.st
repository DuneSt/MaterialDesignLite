Class {
	#name : #MDLMGReportWrapper,
	#superclass : #WAComponent,
	#instVars : [
		'report'
	],
	#category : 'Material-Design-Lite-Magritte-Examples'
}

{ #category : #'initialize-release' }
MDLMGReportWrapper >> close [

	self answer: nil
]

{ #category : #rendering }
MDLMGReportWrapper >> renderContentOn: html [
	html render: self report.
	html mdlCardActions
		with: [ html anchor
				callback: [ self close ];
				with: [ html mdlButton raised with: 'Close' ] ]
]

{ #category : #accessing }
MDLMGReportWrapper >> report [
	^ report
]

{ #category : #accessing }
MDLMGReportWrapper >> report: anObject [
	report := anObject
]
