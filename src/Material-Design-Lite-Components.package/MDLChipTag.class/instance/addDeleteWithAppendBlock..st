private
addDeleteWithAppendBlock: aBlock
	self class: #'mdl-chip__deletable'.
	self script: (self canvas jQuery this append: aBlock)