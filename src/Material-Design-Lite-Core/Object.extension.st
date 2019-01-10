Extension { #name : #Object }

{ #category : #'*Material-Design-Lite-Core' }
Object >> codeOf: aSymbol [
	"I take a method selector I contains and return his source code without the declaration."

	^ String streamContents: [ :stream | (self class sourceCodeAt: aSymbol) lines allButFirst do: [ :ea | stream nextPutAll: ea ] separatedBy: [ stream nextPutAll: GRPlatform current newline ] ]
]

{ #category : #'*Material-Design-Lite-Core' }
Object >> isOnGemstone [
	"In Gemstone we load the package Matrial-Design-Lite-Gemstone which includes a MDLGemstone class. We can use this to know if we are on Gemstone."
	
	^ Smalltalk hasClassNamed: #MDLGemstone
]
