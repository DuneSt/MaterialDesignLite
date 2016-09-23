accessing
layoutStyle
	^ layoutStyle ifNil: [ layoutStyle := self layoutStyles first ]