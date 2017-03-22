private
addDeleteWithAppendBlock: aBlock
	self class: #'mdl-chip__deletable'.
	self ensureId.
	self script: (canvas jQuery this append: aBlock)