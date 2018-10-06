*Material-Design-Lite-Core
codeOf: aSymbol
	"I take a method selector I contains and return his source code without the declaration."

	^ String streamContents: [ :stream | (self class sourceCodeAt: aSymbol) lines allButFirst do: [ :ea | stream nextPutAll: ea ] separatedBy: [ stream nextPutAll: GRPlatform current newline ] ]