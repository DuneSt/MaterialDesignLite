Class {
	#name : #MDLMockRequestContext,
	#superclass : #WARequestContext,
	#category : #'Material-Design-Lite-Components-Tests-Abstract'
}

{ #category : #'instance creation' }
MDLMockRequestContext class >> new [
	^ super request: WARequest new response: WABufferedResponse new
]

{ #category : #'accessing-dynamic' }
MDLMockRequestContext >> handler [
	^ WARequestHandler new
]
