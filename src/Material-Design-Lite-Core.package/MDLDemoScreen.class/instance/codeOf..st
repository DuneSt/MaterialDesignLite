accessing
codeOf: aSymbole
	"I take a method selector I contains and return his source code without the declaration."

	self
		flag:
			#'For now the line ending in Pharo is cr but it will change in the future. Infortunatly there is no way to know the current line ending, so this method will need to be updated by hand during the change.'.
	^ (self class >> aSymbole) sourceCode copyAfter: Character cr